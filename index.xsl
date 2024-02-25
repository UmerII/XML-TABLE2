<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="Aptech">

<html>
    <body>
        <style>
            table{height:500px;width:500px;}
            tr , th , td{
                padding:10px;
                color:black;
            }
            h1{
                color:red;
                text-align:center;
                text-decoration:underline;
                text-decoration-color:black;
            }
            <!-- img{
                width:100px;
                background-repeat:no-repeat;
            } -->
        </style>
        <h1>Student Information</h1>
        <table border="1px" align="center">
            <tr>
                <th>Name</th>
                <th>Age</th>
                <th>Address</th>
                <th>Gender</th>
                <th>image</th>
            </tr>
            <xsl:for-each select="student">
                <tr bgcolor="red">
                    <td><xsl:value-of select="Name"></xsl:value-of></td>
                    <td><xsl:value-of select="Age"></xsl:value-of></td>
                    <td><xsl:value-of select="Address"></xsl:value-of></td>
                    <td><xsl:value-of select="Gender"></xsl:value-of></td>
                    <td><img src="{Image}" /></td>
                    <!-- <td><img src="./images/Haris.png"/></td> -->
                    <!-- <td><xsl:value-of select="image"></xsl:value-of></td> -->
                    
                </tr>
                 <!-- <div>
                    <img src="./images/Hasan.png"></img>
                </div> -->
                <!-- <div>
                    <img src="./images/Haris.png"></img>
                </div>  -->
            </xsl:for-each>
        </table>
    </body>
</html>


</xsl:template>
</xsl:stylesheet>