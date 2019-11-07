<?xml version="1.0"?>
<xsl:transform xmlns:xsl="allergenchart.xml" version="1.0">
<xsl:template match="/">
<html>
    <head>

    <title>Allergen Chart</title>>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="style.css" rel="stylesheet" type="text/css" />
      <!-- Include the JavaScript code for processing the XML data -->

      <script src="allergen.js"></script>
</head>

<body>
      <h2>
<img src="giphy.gif" alt="Logo" width="58" height="100" />ALLERGEN CHART</h2>
 <p>Select your entrees from the menu below. To calculate the amount of the bill, click the Calculate Bill button. Check the "Highlight Vegetarian Meals" box to highlight vegetarian dishes.</p>

 <table id="ChartTable" border="1" class="indent">

    <thead>
     <tr>
         <th colspan="3">Allergen Chart</th>
         </tr>>
         <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                        </tr>

     </thead>
             <tbody>

          <xsl:for-each select="/allergen/item">

                             <tr>
                                <td colspan="3">
                                    <xsl:value-of select="@Dishes" />
                                </td>

                                </tr>
                                <tr>
                                    <td align="center">
                                         <input name="item0" type="checkbox" />
                                          </td>
                                          <td>
                                        <xsl:value-of select="item" />
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="price" />
                                    </td>
                                    </tr>>
               </xsl:for-each>>
        </tbody>
 </table>
 <form class="indent">
                    <p>
                        <input type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill" />
				Total: €
				<input type="text" name="txtBillAmt" /><input type="checkbox" name="cbOpts" value="isVeg" id="showVeg" /><label for="showVeg">Highlight Vegetarian Meals</label></p>
                </form>




 <h1><xsl:value-of select="//item" /></h1>
</body>
</html>
</xsl:template>
</xsl:transform>