<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

            <h1>
					There are <xsl:value-of select="count(Language_Holiday_Agency_Data/Client_Info/Booking_Info/Holiday_Type[Type= 'School Groups'])"/> Clients traveling with School in the Database
			</h1>


			<body>
				<h2>Some details about those clients </h2>
				<h2>If holiday Type = School Groups then True, else False</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
			            <th>Full Name</th>
						<th>Age</th>
                        <th>Package Duration</th>
                        <th>Holiday Type</th>
                        <th>Language To Study</th>
                        <th>Teacher Name</th>

					</tr>
                 
					<xsl:for-each select="/Language_Holiday_Agency_Data/Client_Info"> 
						<tr>

                                <td>
								<xsl:value-of select="Personal_Info/First_Name"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="Personal_Info/Last_Name"/>
                                </td>

								<td>
								<xsl:value-of select="Personal_Info/Age"/>
                                </td>

                                <td>
								<xsl:value-of select="Booking_Info/Holiday_Type/Package_Duration"/>
                                </td>

                                <td style="color:CadetBlue;text-align:center;">
								<xsl:value-of select="Booking_Info/Holiday_Type/Type='School Groups'"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Course_info/Language"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Course_info/Teacher_Name"/>
                                </td>



						</tr>

					</xsl:for-each>











				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>