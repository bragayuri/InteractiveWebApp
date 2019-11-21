<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:template match="/">


        <table id="table" border="2" class="indent" style="text-align:center;">


            <thread>

                <tr>

                    <th id="id">rId</th>
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
                    <TR>
                        <th id="id">
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

                    </TR>
                </xsl:for-each>


            </tbody>
        </table>


        <Style>
                           .checkbox input[type="checkbox"] {
                           opacity: 0;
                               }

                          .checkbox label {
                           position: relative;
                          display: inline-block;
    
                          /*16px width of fake checkbox + 6px distance between fake checkbox and text*/
                              padding-left: 22px;
                                 }

                            .checkbox label::before,
                            .checkbox label::after {
                             position: absolute;
                            content: "";
    
                              /*Needed for the line-height to take effect*/
                              display: inline-block;
                                 }

                           /*Outer box of the fake checkbox*/
                            .checkbox label::before{
                             height: 16px;
                             width: 16px;
    
                             border: 1px solid;
                              left: 0px;
    
                            /*(24px line-height - 16px height of fake checkbox) / 2 - 1px for the border
                            *to vertically center it.
                                */
                            top: 3px;
                                 }

                            /*Checkmark of the fake checkbox*/
                            .checkbox label::after {
                             height: 5px;
                             width: 9px;
                             border-left: 2px solid;
                             border-bottom: 2px solid;
    
                             transform: rotate(-45deg);
    
                                 left: 4px;
                                 top: 7px;
                                     }

/*Hide the checkmark by default*/
.checkbox input[type="checkbox"] + label::after {
    content: none;
}

/*Unhide on the checked state*/
.checkbox input[type="checkbox"]:checked + label::after {
    content: "";
}

/*Adding focus styles on the outer-box of the fake checkbox*/
.checkbox input[type="checkbox"]:focus + label::before {
    outline: rgb(59, 153, 252) auto 5px;
}



                            
                        </Style>
        <aside>
            <h2> Add new Dishes</h2>
            <h3> Enter Dish Name</h3>
            <input type="text" name="First Name" placeholder="Dish Name" />
            <h3> Mark Allergen</h3>

            <!--Add form to ask views for input-->
           
            <form>
                <form action="/">
                    <div class="checkbox">
                        <input type="checkbox" name="celery" id="checkbox_1" value="X">
                            <label for="checkbox_1">Celery</label>
                            <input type="checkbox" name="gluten" id="checkbox_2" value="X">
                                <label for="checkbox_2">Gluten</label>
                                <input type="checkbox" name="crustaceous" id="checkbox_3" value="X">
                                    <label for="checkbox_3">Crustaceous</label>
                                    <input type="checkbox" name="eggs" id="checkbox_4" value="X">
                                        <label for="checkbox_4">Eggs</label>
                                        <input type="checkbox" name="fish" id="checkbox_5" value="X">
                                            <label for="checkbox_5">Fish</label>
                                            <input type="checkbox" name="lupin" id="checkbox_6" value="X">
                                                <label for="checkbox_6">Lupin</label>
                                                <input type="checkbox" name="Milk" id="checkbox_7" value="X">
                                                    <label for="checkbox_7">Milk</label>
                                                    <input type="checkbox" name="molluscs" id="checkbox_8" value="X">
                                                        <label for="checkbox_8">Molluscs</label>
                                                        <input type="checkbox" name="mustard" id="checkbox_9" value="X">
                                                            <label for="checkbox_9">Mustard</label>
                                                            <input type="checkbox" name="nuts" id="checkbox_10" value="X">
                                                                <label for="checkbox_10">Nuts</label>
                                                                <input type="checkbox" name="peanuts" id="checkbox_11" value="X">
                                                                    <label for="checkbox_11">Peanuts</label>
                                                                    <input type="checkbox" name="sesame" id="checkbox_12" value="X">
                                                                        <label for="checkbox_12">SesameSeeds</label>
                                                                        <input type="checkbox" name="soya" id="checkbox_13" value="X">
                                                                            <label for="checkbox_13">Soya</label>
                                                                            <input type="checkbox" name="suphur" id="checkbox_14" value="X">
                                                                                <label for="checkbox_14">SulphurDioxide</label>
                                                                                <br>
                                                                                    <br>
                    </div>

                </form>
                 
                <input id="submit" type="submit" onclick="insert_Row()" value="Add Dish" />
                <input type="button" onclick="insert_Row()" value="Insert row">
                    <input type="submit" value="Delete Dish" />
                    <br>
            </form>

            </div>
            </div>
        </aside>


        
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>