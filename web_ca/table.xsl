<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output omit-xml-declaration="yes" indent="yes"/>

 <xsl:template match="/*">

 <html>

    <head>
        <title>Test</title> 

        <body>
            <table><xsl:apply-templates select="item"/></table>

             <xsl:template match="item[1]">
  <tr><xsl:apply-templates select="*" mode="header"/></tr>
  <xsl:call-template name="standardRow"/>
 </xsl:template>

 <xsl:template match="item" name="standardRow">
  <tr><xsl:apply-templates select="*"/></tr>
 </xsl:template>

        </body>
    </head> 
     </html>
     








 </xsl:template>











</xsl:stylesheet>
