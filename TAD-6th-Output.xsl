<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"
	            indent="yes"/>
	<xsl:template match="Language_Holiday_Agency_Data">
		<xsl:text>&#10;</xsl:text>
		<xsl:processing-instruction name="xml-stylesheet">
		</xsl:processing-instruction>
		<xsl:text>&#10;</xsl:text>
		<Client_Overview>
			<xsl:comment>Created from Travel Agency Data XML Database by XSLT</xsl:comment>
			<xsl:apply-templates/>
		</Client_Overview>
	</xsl:template>
	<xsl:template match="Language_Holiday_Agency_Data/Client_Info">
		<Client_Info>
			<Nationality>
				<xsl:value-of select="Personal_Info/Nationality"/>
			</Nationality>
			<HolidayType>
				<xsl:value-of select="Booking_Info/Holiday_Type/Type"/>
			</HolidayType>
			<Contract_Signed>
				<xsl:choose>
					<xsl:when test="Booking_Info/Payment_Info/Contract='Signed'">Yes</xsl:when>
					<xsl:otherwise>No</xsl:otherwise>
				</xsl:choose>
			</Contract_Signed>
			<Destination_City>
				<xsl:value-of select="Tour_Information/Location/Transport/Destination_City"/>
			</Destination_City>
            <Junior_Offers>
				<xsl:value-of select="Offers/Juniors/Offer_Name"/>
			</Junior_Offers>
            <Package_Duration>
                <xsl:value-of select="Booking_Info/Holiday_Type/Package_Duration"/>
            </Package_Duration>
            <Adults_Number>
                <xsl:value-of select="Booking_Info/Holiday_Type/Number_Of_Adults"/>
            </Adults_Number>
            <Kids_Number>
                <xsl:value-of select="Booking_Info/Holiday_Type/Number_Of_Children"/>
            </Kids_Number>

			

		</Client_Info>
	</xsl:template>
</xsl:stylesheet>