<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">

<html>
<body>

<!-- <xsl:template match="/generals/person">
<xsl:sort select="votes" data-type="number" order="descending"/>
</xsl:template>
<xsl:apply-templates select="generals/person"> -->


<xsl:for-each select="/generals/person">
    <xsl:sort select="votes" data-type="number" order="descending"/>

    

    <xsl:if test="position() &lt;=10">
        
        <h1><xsl:value-of select="position()"/></h1>
        <h1><xsl:value-of select="name"/></h1>
        <p><xsl:value-of select="votes"/></p>
        <xsl:value-of select="description"/>
        
    </xsl:if>
</xsl:for-each>


<!-- <xsl:for-each select="/generals/person">
    <h1><xsl:value-of select="name"/></h1>
    <p><xsl:value-of select="votes"/></p>
</xsl:for-each> -->


</body>
</html>


</xsl:template>
</xsl:stylesheet>

