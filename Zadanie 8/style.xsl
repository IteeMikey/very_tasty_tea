<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Каталог игр Alawar</title>
  </head>
  
  <body>
    <h1>Каталог игр Alawar</h1>
    
    <xsl:apply-templates select="ALAWAR_EXPORT/Languages/Language/Catalogs/Catalog"/>
  
  </body>
  </html>
</xsl:template>

<xsl:template match="Catalog">
  <h2>
    <xsl:value-of select="CatalogInfo/Name"/>
  </h2>
  
  <ul>
    <xsl:apply-templates select="Items/Item">
      <xsl:sort select="Name"/>  
    </xsl:apply-templates>
  </ul>
</xsl:template>


</xsl:stylesheet>