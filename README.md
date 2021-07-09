# Premade Regions

Provides region information in the premade groups and applicants listings as well as to other addons.

When used as a standalone addon it will show the region of the group leader or applicant.  When used in combination with premade groups filter you can also filter the group by the group leaders region.

<h3>Example</h3>

To look for mythic plus groups who fit your party makeup and are not from the Chicago or Mexico servers you would use the following advanced expression query.

<code>mythicplus and partyfit and not (chi or mex)</code>

<h3>Keywords</h3>

<table>
  <thead>
    <tr>
      <th>Keyword</th>
      <th>Type</th>
      <th>Description</th>
      <th>Example</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code>oce</code></td>
      <td>boolean</td>
      <td>True if the datacenter of the group leader is Sydney Australia</td>
      <td><code>oce</code></td>
    </tr>
    <tr>
      <td><code>chi</code></td>
      <td>boolean</td>
      <td>True if the datacenter of the group leader is Chicago</td>
      <td><code>chi</code></td>
    </tr>
    <tr>
      <td><code>la</code></td>
      <td>boolean</td>
      <td>True if the datacenter of the group leader is Los Angeles</td>
      <td><code>la</code></td>
    </tr>
    <tr>
      <td><code>mex</code></td>
      <td>boolean</td>
      <td>True if the region of the group leader is Mexico</td>
      <td><code>mex</code></td>
    </tr>
    <tr>
      <td><code>bzl</code></td>
      <td>boolean</td>
      <td>True if the region of the group leader is Brazil</td>
      <td><code>bzl</code></td>
    </tr>
    <tr>
      <td><code>region</code></td>
      <td>string</td>
      <td>Region code of the group leader</td>
      <td><code>(region == nil or region == "mex")</code></td>
    </tr>
  </tbody>
</table>

<h3>Resources</h3>
<ul>
  <li><a href="https://www.curseforge.com/wow/addons/premade-regions" rel="nofollow">Project on Curse.com</a></li>
  <li><a href="https://addons.wago.io/addons/premade-groups-filter" rel="nofollow">Project on Wago.io</a></li>
</ul>
