# Premade Regions

Provides region information in the premade groups and applicants listings as well as to other addons.

When used as a standalone addon it will show the region of the group leader or applicant.  When used in combination with premade groups you can also filter groups by the group leaders region.

<h3>Example</h3>

To look for mythic plus groups who fit your party makeup and are not from US East or Mexico servers you would use the following advanced expression query.

<code>mythicplus and partyfit and not (use or mex)</code>

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
      <td>True if the region of the group leader is Oceanic</td>
      <td><code>oce</code></td>
    </tr>
    <tr>
      <td><code>usp</code></td>
      <td>boolean</td>
      <td>True if the region of the group leader is US Pacific</td>
      <td><code>usp</code></td>
    </tr>
    <tr>
      <td><code>usm</code></td>
      <td>boolean</td>
      <td>True if the region of the group leader is US Mountain</td>
      <td><code>usm</code></td>
    </tr>
    <tr>
      <td><code>usc</code></td>
      <td>boolean</td>
      <td>True if the region of the group leader is US Central</td>
      <td><code>usc</code></td>
    </tr>
    <tr>
      <td><code>use</code></td>
      <td>boolean</td>
      <td>True if the region of the group leader is US East</td>
      <td><code>use</code></td>
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
  </tbody>
</table>

<h3>Resources</h3>
<ul>
  <li><a href="https://mods.curse.com/addons/wow/premade-regions" rel="nofollow">Project on Curse.com</a></li>
</ul>
