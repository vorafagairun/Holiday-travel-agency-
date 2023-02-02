<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Clients Informations</h2>
				<table border="1">
					<tr bgcolor="#9acd32">

          <xsl:comment>Selecting Personal_info under the Client_Info element</xsl:comment>

			      <th>First Name</th>
            <th>Last Name</th>
            <th>Nationality</th>
            <th>Age</th>
            <th>Gender</th>
            <th>Country</th>
            <th>City</th>
            <th>Address</th>
            <th>Email</th>
            <th>Phone Number</th>
					</tr>
					<xsl:for-each select="/Language_Holiday_Agency_Data/Client_Info/Personal_Info">
						<tr>
							<td>
								<xsl:value-of select="First_Name"/>
              </td>
              <td>
                <xsl:value-of select="Last_Name"/>
              </td>
              <td>
                <xsl:value-of select="Nationality"/>
              </td>
              <td>
                <xsl:value-of select="Age"/>
              </td>
              <td>
                <xsl:value-of select="Gender"/>
              </td>
              <td>
                <xsl:value-of select="Country"/>
              </td>
              <td>
                <xsl:value-of select="City"/>
              </td>
              <td>
                <xsl:value-of select="Address"/>
              </td>
              <td>
                <xsl:value-of select="Email"/>
              </td>
              <td>
                <xsl:value-of select="Phone_Number"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>