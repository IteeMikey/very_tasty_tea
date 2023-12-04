<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
    <html>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function() {
                <!-- Повесить обработчик клика на все элементы с классом "date" -->
                $('.date').click(function() {
                <!-- Найти следующий элемент после текущего (на котором произошёл клик) -->
                <!-- Это блок с программами -->
                    $(this).next('.programs')
                    <!-- Переключить на нем класс "visible"   -->
                    .toggleClass('visible');
                });
            });
        </script>
        <title>Телепрограмма</title>
        <style>
            .date {
                display: block;
                cursor: pointer; 
                color: black;
            }

            .date:hover {
                color: blue;
            }

            .programs {
                display: none;
            }

            .programs.visible {
                display: block;  
            }
            
            .program {
                font-size: 14px;
            }
        </style>
        <body>
            <h1>Телепрограмма</h1>
            
            <xsl:for-each select="TVGrid/Event[not(preceding-sibling::Event/Date=Date)]">
                <span class="date"><xsl:value-of select="Date"/></span>
                <div class="programs">
                    <xsl:for-each select="//Event[Date=current()/Date]">
                        <div class="program">
                            <xsl:value-of select="Start"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="Title"/>
                        </div>
                    </xsl:for-each>
                </div>
            </xsl:for-each>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>

