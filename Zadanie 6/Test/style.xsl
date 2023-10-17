<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">

<html>
<head><title>XSL sample</title></head>
<body>
<xsl:for-each select="/garage/auto">
    <h1><xsl:value-of select="brand"/></h1>
    <xsl:if test="brand='Volvo'">
        <p><xsl:value-of select="model"/></p>
    </xsl:if>
</xsl:for-each>
</body>
</html>

</xsl:template>
</xsl:stylesheet>