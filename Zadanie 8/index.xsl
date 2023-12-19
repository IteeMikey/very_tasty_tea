<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" />
<xsl:template match="/">
<html>
    <head>
    <script>
    <!-- function showInfo(id) {
    var elem = document.getElementById(id);
    if (elem.style.display === "none") {
        elem.style.display = "block";
    } 
    else {
        elem.style.display = "none";
    }
    } -->
    </script>
        <title>Games</title>
        <style>
            div:hover p {display:block}
            div p, h2, img {display:none}
            div ul, li {list-style-type: none}
            div:hover h2,
            div:hover h1, 
            div:hover img {display:block}
            div img {display:none}


            #ul_genre {
                display: flex;
                flex-direction: column;
            }

            div:hover #name {
                list-style-type: square;
                color:blue;
            }
                
            .properties { 
                width: 70%;
            } 

            a { 
                color: darkblue; 
                text-decoration: none; 
            } 

            a:hover { 
                text-decoration: underline; 
                color:red;
            } 

            h2 { 
                margin: 0 0 5px 0; 
            } 

            img {
                width: 200px;
                height: 200px;
            }

            p {color:black;}
            h1 {color:blue;}
        </style>
    </head>
    <body>
        <xsl:for-each select="ALAWAR_EXPORT/Languages/Language/Catalogs/Catalog/Dictionaries/Dictionary/DictionaryItem">
            <xsl:sort select="Name" />
            <div>
                <xsl:if test="../@Code = 'Genre' ">
                    <h1 id="ul_genre"><xsl:value-of select="Name"/></h1>
                    <xsl:for-each select="Elements/Element">
                        <xsl:variable name="item_elem" select="@ID"/>
                        <xsl:for-each select="../../../../../Items/Item">
                        <!-- <xsl:sort select="Name" /> -->
                            <xsl:variable name="item_items" select="@ID"/>
                            <xsl:if test="$item_elem = $item_items">
                                <xsl:variable name="file" select="Files/File"></xsl:variable>
                                <xsl:variable name="image" select="Screenshots/Screenshot[@ID='0']"></xsl:variable>
                                <xsl:variable name="property" select="Properties/Property[@Code='Description2000']"></xsl:variable>
                                 <div>
                                    <ul><li id="name"><h2><a href="{$file}"><xsl:value-of select="Name"/></a></h2></li></ul>
                                    <ul class="properties">    
                                        <li><a href="{$file}"><img src="{$image}" ></img></a></li>
                                        <li><a href="{$file}"><p><xsl:value-of select="$property"/></p></a></li>
                                        <p><a href="{$file}">Подробнее</a></p>
                                    </ul>                               
                                </div>
                            </xsl:if>
                         </xsl:for-each>
                    </xsl:for-each>
                </xsl:if>
            </div>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet> 