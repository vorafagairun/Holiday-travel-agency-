<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
{ "Client_Info": [
<xsl:apply-templates select="Language_Holiday_Agency_Data/Client_Info"/>
] }
</xsl:template>
	<xsl:template match="Client_Info">
{"Client Nationality": "<xsl:value-of select="Personal_Info/Nationality"/>",
 "Holiday Type": "<xsl:value-of select="Booking_Info/Holiday_Type/Type"/>",
 "Contract Signed : True Or False ": "<xsl:value-of select="Booking_Info/Payment_Info/Contract='Signed'"/>",
 "Destination City": "<xsl:value-of select="Tour_Information/Location/Transport/Destination_City"/>",
 "Offer Name": "<xsl:value-of select="Offers/Juniors/Offer_Name"/>",
 "Package Duration": "<xsl:value-of select="Booking_Info/Holiday_Type/Package_Duration"/>",
 "Adults Number": "<xsl:value-of select="Booking_Info/Holiday_Type/Number_Of_Adults"/>",
 "Kids Number": "<xsl:value-of select="Booking_Info/Holiday_Type/Number_Of_Children"/>"

 }
</xsl:template>
</xsl:stylesheet>