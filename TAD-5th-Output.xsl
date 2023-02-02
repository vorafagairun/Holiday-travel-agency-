<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

        <h1>
					Total number of travels : <xsl:value-of select="count(Language_Holiday_Agency_Data/Client_Info/Location/Transport/Transport_Type)  "/> 
			</h1>


            <h1>
					Number of Clients Travelling with Plane : <xsl:value-of select="count(Language_Holiday_Agency_Data/Client_Info/Location/Transport[Transport_Type ='Plane'])  "/> 
			</h1>
            <h1>
					Number of Clients Travelling with Ship : <xsl:value-of select="count(Language_Holiday_Agency_Data/Client_Info/Location/Transport[Transport_Type ='Cruise Ship'])"/> 
			</h1>


			<body>
				<h2>Transport and accommodation informations of those clients </h2>
				<table border="1">
					<tr bgcolor="#9acd32">
			            <th>Client Name</th>
                        <th>Accommodation Name</th>
                        <th>Accommodation Address</th>
                        <th>Accommodation Type</th>
                        <th>Rooms Number</th>
                        <th>Room Type</th>
                        <th>Ticket ID</th>
                        <th>Transport Type</th>
                        <th>Departure City</th>
                        <th>Destination City</th>
                        <th>Departure Date</th>
                        <th>Return Date</th>

					</tr>
                 
					<xsl:for-each select="/Language_Holiday_Agency_Data/Client_Info"> 
						<tr>

                                <td>
								<xsl:value-of select="Personal_Info/First_Name"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="Personal_Info/Last_Name"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Accommodation/Name"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Accommodation/Address"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Accommodation/Type"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Accommodation/Number_Of_Rooms"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Accommodation/Room_Type"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Transport/Ticked_ID"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Transport/Transport_Type"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Transport/Departure_City"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Transport/Destination_City"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Transport/Departure_Date"/>
                                </td>

                                <td>
								<xsl:value-of select="Location/Transport/Return_Date"/>
                                </td>



						</tr>

					</xsl:for-each>











				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>