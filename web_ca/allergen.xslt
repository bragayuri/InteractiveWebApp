<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="style.css" version="1.0">
<xsl:transform xmlns:xsl="allergenchart.xml" version="1.0">
<xsl:template match="/">
<html>
<body>
<h1><xsl:value-of select="//item" /></h1>
</body>
</html>
</xsl:template>
</xsl:transform>