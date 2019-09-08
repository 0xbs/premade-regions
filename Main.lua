-------------------------------------------------------------------------------
-- Premade Regions
-------------------------------------------------------------------------------
-- Copyright (c) 2019 Bernhard Saumweber (gihub.com/0xbs)
--                and github.com/Rustyb0y
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
-------------------------------------------------------------------------------

local PR = select(2, ...)

-- prevent error message spamming by printing the messages only once
PR.GlobalRegionNotSupportedPrinted = false
PR.RealmUnknownPrinted = {}

function PR.PrintGlobalRegionNotSupported()
    if not PR.GlobalRegionNotSupportedPrinted then
        print("Premade Regions currently only support the 'Americas' region "..
                "(North/Latin/South America, Australia and New Zealand)")
        PR.GlobalRegionNotSupportedPrinted = true
    end
end

function PR.PrintRealmNotFound(realm)
    if realm and not PR.RealmUnknownPrinted[realm] then
        print("Premade Regions: the realm "..realm.." could not be matched to a region. "..
                "Please open an issue at https://github.com/0xbs/premade-regions/issues")
        PR.RealmUnknownPrinted[realm] = true
    end
end

--- Returns the region identifier of a player
--- @param name string the name of the character of the player
--- @return number region identifier (see Regions.lua)
function PR.GetRegion(name)
    if not name then
        return nil
    end

    -- see https://us.battle.net/support/en/article/7558 and https://wow.gamepedia.com/API_GetCurrentRegion
    -- in fact still unreliable for players who switch between regions as of 2019-08-18
    -- (getting "EU" using my EU client even if I log into a US account)
    if not (GetCurrentRegionName() == "US") then
        PR.PrintGlobalRegionNotSupported()
        return nil
    end

    local leaderRealm = name:match("%-(.+)")
    if leaderRealm then
        leaderRealm = leaderRealm:lower():gsub(" ", "")
    else
        leaderRealm = GetRealmName():lower():gsub(" ", "")
    end

    -- match the realm name to a region
    for region, regionRealms in pairs(PR.REGION_REALMS) do
        for _, realm in pairs(regionRealms) do
            if realm:lower():gsub(" ", "") == leaderRealm then
                return region
            end
        end
    end

    -- could not match the realm to a region
    PR.PrintRealmNotFound(leaderRealm)
    return nil
end

function PR.GetRegionText(name) return PR.REGION_TEXT[PR.GetRegion(name)] end
function PR.GetRegionColored(name) return PR.REGION_COLORED[PR.GetRegion(name)] end

--- Hook on LFGListSearchEntry_Update to add the region to the activity
--- @param self any LFGList
function PR.OnLFGListSearchEntryUpdate(self)
    local searchResultInfo = C_LFGList.GetSearchResultInfo(self.resultID)
    local region = PR.GetRegionColored(searchResultInfo.leaderName)
    self.ActivityName:SetFormattedText("%s %s", region, self.ActivityName:GetText())
end

--- Hook on LFGListApplicationViewer_UpdateApplicantMember to add the region to the name
--- @param member any member object
--- @param appID number applicant identifier for C_LFGList.GetApplicantMemberInfo
--- @param memberIdx number member index for C_LFGList.GetApplicantMemberInfo
--- @param status string failed/cancelled/declined/declined_full/declined_delisted/invitedeclined/timedout/invited/inviteaccepted/invitedeclined
--- @param pendingStatus boolean
function PR.OnLFGListApplicationViewerUpdateApplicantMember(member, appID, memberIdx, status, pendingStatus)
    local name = C_LFGList.GetApplicantMemberInfo(appID, memberIdx);
    local region = PR.GetRegionColored(name)
    member.Name:SetFormattedText("%s %s", region, member.Name:GetText())
end

hooksecurefunc("LFGListSearchEntry_Update", PR.OnLFGListSearchEntryUpdate)
hooksecurefunc("LFGListApplicationViewer_UpdateApplicantMember", PR.OnLFGListApplicationViewerUpdateApplicantMember)

-- Export functions and make them global for other addons like Premade Groups Filter
PremadeRegions = {}
PremadeRegions.GetRegion = PR.GetRegion
PremadeRegions.GetRegionText = PR.GetRegionText
PremadeRegions.GetRegionColored = PR.GetRegionColored
