# Premade Regions

Provides region information in the premade groups and applicants listings as well as to other addons.

When used as a standalone addon it will show the region of the group leader or applicant.  When used in combination with premade groups filter you can also filter the group by the group leaders region.

### Example

To look for mythic plus groups who fit your party makeup and are not from the Chicago or Mexico servers you would use the following advanced expression query:

```lua
mythicplus and partyfit and not (chi or mex)
```

To remove oceanic groups, simply use:

```lua
not oce
```

### Keywords

| Keyword  | Type    | Region  | Description                                                                         |
|----------|---------|---------|-------------------------------------------------------------------------------------|
| `oce`    | boolean | US only | True if the datacenter region of the group leader's realm is Oceanic (Sydney)       |
| `chi`    | boolean | US only | True if the datacenter region of the group leader's realm is Chicago                |
| `la`     | boolean | US only | True if the datacenter region of the group leader's realm is Los Angeles            |
| `mex`    | boolean | US only | True if the datacenter region of the group leader's realm is Mexico                 |
| `bzl`    | boolean | US only | True if the datacenter region of the group leader's realm is Brazil                 |
| `eng`    | boolean | EU only | True if the primary language of the leader's realm is English                       |
| `ger`    | boolean | EU only | True if the primary language of the leader's realm is German                        |
| `fra`    | boolean | EU only | True if the primary language of the leader's realm is French                        |
| `ita`    | boolean | EU only | True if the primary language of the leader's realm is Italian                       |
| `spa`    | boolean | EU only | True if the primary language of the leader's realm is Spanish                       |
| `por`    | boolean | EU only | True if the primary language of the leader's realm is Portuguese                    |
| `rus`    | boolean | EU only | True if the primary language of the leader's realm is Russian                       |
| `region` | string  | All     | Region code of the group leader, use with e.g. `(region == nil or region == "mex")` |

### Resources

* [Project on CurseForge](https://www.curseforge.com/wow/addons/premade-regions)
* [Project on Wago.io](https://addons.wago.io/addons/premade-groups-filter)
