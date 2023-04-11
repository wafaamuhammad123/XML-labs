<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>My Employees</h2>
    <table border="1">
    
        <th rowspan="2">Name</th>
        <th rowspan="2">Phone</th>
        <th colspan="5">Address</th>
        <th rowspan="2">Email</th>

      
     
        <th>Country</th>
        <th>City</th>
        <th>Region</th>
        <th>Buliding Number</th>
        <th>Street</th>

      
      <xsl:for-each select="employees/employee">
        <tr>
          <td><xsl:value-of select="name"/></td>
          <td><xsl:value-of select="phones/phone"/></td>
          <td><xsl:value-of select="addresses/address/country"/></td>
          <td><xsl:value-of select="addresses/address/city"/></td>
          <td><xsl:value-of select="addresses/address/region"/></td>
          <td><xsl:value-of select="addresses/address/buildingNumber"/></td>
          <td><xsl:value-of select="addresses/address/street"/></td>
          <td><xsl:value-of select="email"/></td>

        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>