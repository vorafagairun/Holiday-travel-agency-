<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>

            <h1>
					The percentage of people choosing the English Language : <xsl:value-of select="(count(Language_Holiday_Agency_Data/Client_Info/Holiday_Info/Course_info[Language ='English']) div count(Language_Holiday_Agency_Data/Client_Info))*100 "/> %
			</h1>
            <h1>
					The percentage of people choosing the French Language : <xsl:value-of select="(count(Language_Holiday_Agency_Data/Client_Info/Holiday_Info/Course_info[Language ='French']) div count(Language_Holiday_Agency_Data/Client_Info))*100"/> %
			</h1>
            <h1>
					The percentage of people choosing the Chineese Language : <xsl:value-of select="(count(Language_Holiday_Agency_Data/Client_Info/Holiday_Info/Course_info[Language ='Chineese']) div count(Language_Holiday_Agency_Data/Client_Info))*100"/> %
			</h1>
            <h1>
					The percentage of people choosing the Spanish Language : <xsl:value-of select="(count(Language_Holiday_Agency_Data/Client_Info/Holiday_Info/Course_info[Language ='Spanish']) div count(Language_Holiday_Agency_Data/Client_Info))*100"/> %
			</h1>
			<h1>
					The percentage of people choosing the German Language : <xsl:value-of select="(count(Language_Holiday_Agency_Data/Client_Info/Holiday_Info/Course_info[Language ='German']) div count(Language_Holiday_Agency_Data/Client_Info))*100"/> %
			</h1>


			<body>
				<h2>Info about Payment of those clients </h2>
				<table border="1">
					<tr bgcolor="#9acd32">
			            <th>Full Name</th>
						<th>Language</th>
                        <th>Contract</th>
                        <th>Promo Code</th>
                        <th>Card Number</th>

					</tr>
                 
					<xsl:for-each select="/Language_Holiday_Agency_Data/Client_Info"> 
						<tr>

                                <td>
								<xsl:value-of select="Personal_Info/First_Name"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="Personal_Info/Last_Name"/>
                                </td>

								<td>
                                <xsl:value-of select="Holiday_Info/Course_info/Language"/>
                                </td>

                                <td>
								<xsl:value-of select="Booking_Info/Payment_Info/Contract"/>
                                </td>

                                <td>
								<xsl:value-of select="Booking_Info/Payment_Info/Promo_Code"/>
                                </td>

                                <td>
								<xsl:value-of select="Booking_Info/Payment_Info/Card_Number"/>
                                </td>



						</tr>

					</xsl:for-each>











				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>