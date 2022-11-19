# Premade Regions

Provides region information in the premade groups and applicants listings as well as to other addons.

When used as a standalone addon it will show the region of the group leader or applicant.  When used in combination with premade groups filter you can also filter the group by the group leaders region.

### Example

To look for mythic plus groups who fit your party makeup and are not from the Chicago or Mexico servers you would use the following advanced expression query.

`mythicplus and partyfit and not (chi or mex)`

### Keywords

| Keyword  | Type    | Description                                                    | Example                              |
|----------|---------|----------------------------------------------------------------|--------------------------------------|
| `oce`    | boolean | True if the datacenter of the group leader is Sydney Australia | `oce`                                |
| `chi`    | boolean | True if the datacenter of the group leader is Chicago          | `chi`                                |
| `la`     | boolean | True if the datacenter of the group leader is Los Angeles      | `la`                                 |
| `mex`    | boolean | True if the region of the group leader is Mexico               | `mex`                                |
| `bzl`    | boolean | True if the region of the group leader is Brazil               | `bzl`                                |
| `region` | string  | Region code of the group leader                                | `(region == nil or region == "mex")` |

### Resources

* [Project on Curse.com](https://www.curseforge.com/wow/addons/premade-regions)
* [Project on Wago.io](https://addons.wago.io/addons/premade-groups-filter)
