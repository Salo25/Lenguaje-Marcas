<?xml version="1.0" encoding="utf-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">
	<html>
        <head>
            <link rel="stylesheet" type="text/css" href="biblioteca.css" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        </head>
        <body>
            <div id="cuerpoPagina">
                <xsl:apply-templates />
                <p class="errorViewport">Viewport demasiado estrecho</p>
            </div>
        </body>
    </html>
  </xsl:template>


  <xsl:template match="libro">
     <div class="contenido">
         <div class="portaretratos">
             <img class="portaretratos iamges">
                 <xsl:attribute name="src">
                     <xsl:value-of select="foto"/>
                 </xsl:attribute>
             </img>
         </div>
         <p class="parrafo">
             <xsl:value-of select="autor"/>
         </p>
         <h2>
             <xsl:value-of select="titulo"/>
         </h2>
     </div>
  </xsl:template>

</xsl:stylesheet>
