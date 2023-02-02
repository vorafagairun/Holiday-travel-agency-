<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

            <h1>
					The average entry test score for all clients : <xsl:value-of select="sum(Language_Holiday_Agency_Data/Client_Info/Holiday_Info/Certificates_Info/Entry_Test_Score) div count(Language_Holiday_Agency_Data/Client_Info)"/> 
			</h1>


			<body>
				<h2>Informations about the holiday : certificates, courses and the support tools provided</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
			            <th>Full Name</th>
                        <th>Entry Test Score</th>
                        <th>Learning Type</th>
                        <th>Language</th>
                        <th>Level</th>
                        <th>Support Tool : Books</th>
                        <th>Support Tool : Moodle_Access</th>
                        <th>Support Tool : Support Sessions</th>

					</tr>
                 
					<xsl:for-each select="/Language_Holiday_Agency_Data/Client_Info"> 
						<tr>

                                <td>
								<xsl:value-of select="Personal_Info/First_Name"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="Personal_Info/Last_Name"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Certificates_Info/Entry_Test_Score"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Course_info/Learning_Type"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Course_info/Language"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Course_info/Level"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Course_info/Support_Tools/Books"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Course_info/Support_Tools/Moodle_Access"/>
                                </td>

                                <td>
								<xsl:value-of select="Holiday_Info/Course_info/Support_Tools/Support_Sessions"/>
                                </td>



						</tr>

					</xsl:for-each>











				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>