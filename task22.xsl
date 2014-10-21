<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
 <xsl:template match="/">
  <xsl:for-each select="//book">
   <xsl:when select="count(title)>1"/>
    <xsl:value-of select="title"/>*,
   <xsl:otherwise select="title"/>
    <xsl:value-of select="title"/>
  </xsl:for-each>
 </xsl:template>
</xsl:stylesheet>
