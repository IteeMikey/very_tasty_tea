<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <title>Телепрограмма</title>
        <style>
          .date {
            cursor: pointer; 
            color: blue;
          }
          .date:hover {
            text-decoration: underline;
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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
          $(document).ready(function() {
            $('.date').click(function() {
              $(this).next('.programs').toggleClass('visible');
            });
          });
        </script>
      </head>
      <body>
        <h1>Телепрограмма</h1>
        
        <div>
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
        </div>
        
      </body>
    </html>
  </xsl:template>
  
</xsl:stylesheet>

