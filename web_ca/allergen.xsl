<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">
 

     <div class="col-lg-12 text-center">
        <table id="table" border="2" class="indent" style="text-align:center;">
            


            <thread>

                <tr>
                     

                    <th id="id">SELECT A ROW TO DELETE</th>
                    <th id="dishes">Dishes</th>
                    <th id="celery">Celery</th>
                    <th id="gluten">Gluten</th>
                    <th id="crustaceous">Crustaceous</th>
                    <th id="egg">eggs</th>
                    <th id="fish">Fish</th>
                    <th id="lupin">Lupin</th>
                    <th id="milk">milk</th>
                    <th id="molluscs">Molluscs</th>
                    <th id="mustard">Mustard</th>
                    <th id="nuts">Nuts</th>
                    <th id="peanuts">Peanuts</th>
                    <th id="sesame">SesameSeeds</th>
                    <th id="soya">Soya</th>
                    <th id="sulph">SulphurDioxide</th>
                </tr>
            </thread>
            <tbody>
                <xsl:for-each select="allergen/item">
                     <tr id="{position()}">
                        <th id="id">
                             <rId><input name="item0" type="checkbox" /></rId>
                            <xsl:value-of select="rId" />
                           
                        </th>
                        <th id="dishes">
                            <xsl:value-of select="Dishes" />
                        </th>
                        <th id="celery">
                            <xsl:value-of select="Celery" />
                        </th>
                        <th id="gluten">
                            <xsl:value-of select="Gluten" />
                        </th>
                        <th id="crustaceous">
                            <xsl:value-of select="Crustaceous" />
                        </th>
                        <th id="egg">
                            <xsl:value-of select="eggs" />
                        </th>
                        <th id="fish">
                            <xsl:value-of select="Fish" />
                        </th>
                        <th id="lupin">
                            <xsl:value-of select="Lupin" />
                        </th>
                        <th id="milk">
                            <xsl:value-of select="milk" />
                        </th>
                        <th id="molluscs">
                            <xsl:value-of select="Molluscs" />
                        </th>
                        <th id="mustard">
                            <xsl:value-of select="Mustard" />
                        </th>
                        <th id="nuts">
                            <xsl:value-of select="Nuts" />
                        </th>
                        <th id="peanuts">
                            <xsl:value-of select="Peanuts" />
                        </th>
                        <th id="sesame">
                            <xsl:value-of select="SesameSeeds" />
                        </th>
                        <th id="soya">
                            <xsl:value-of select="Soya" />
                        </th>
                        <th id="sulph">
                            <xsl:value-of select="SulphurDioxide" />
                        </th>

                    </tr>
                </xsl:for-each>


            </tbody>
        </table>
        </div>
       


       


                            
                       
        <div class="col-lg-12 text-center">
            

            <!--Add form to ask views for input-->
           
           
               
             
          

            </div>
            
        


        
        
        
    </xsl:template>

</xsl:stylesheet>