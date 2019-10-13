<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
        <head>
            <meta charset="utf-8"/>
            <link rel="stylesheet" type="text/css" href="playlist.css"/>
            <title>Biblioteca</title>
        </head>
        <body>
            <header>
                <h1>MUSIC STORE</h1>
            <span>

            </span>
            </header>
            <nav>
                <table>
                <tr>
                <td>
                    <h2>ÁLBUMES</h2>    
                </td>
                </tr>
                <tr>
                <td>
                    <ul>
                    <xsl:apply-templates select="//album"/>      
                    </ul>            
                </td>
                </tr>
                <tr>               
                <td>
                    <h2>ARTISTAS</h2>    
                </td>
                </tr>    
                <tr>
                <td>
                    <ul>
                    <xsl:apply-templates select="//artista"/>
                    </ul>    
                </td>
                </tr>
                <tr>               
                <td>
                    <h2>CANCIONES</h2>    
                </td>
                </tr>    
                <tr>
                <td>
                    <ul>
                    <xsl:apply-templates select="//cancion"/>
                    </ul>    
                </td>
                </tr>
                </table>
            </nav>
            <main>
                <table>
             <tr>
                <td>
                    <ul>
                    <xsl:apply-templates select="//cancion"/>
                    </ul>    
                </td>
                </tr>
                </table>
            </main>
        </body>
    </html>
  </xsl:template>

    <xsl:template match="album">
     <li><xsl:value-of select="titulo"/>
    (<xsl:value-of select="compañia/@nombre"/>)</li>
    </xsl:template>
  
    <xsl:template match="artista">
     <li><xsl:value-of select="nombre"/></li>
    </xsl:template>
    
    <xsl:template match="cancion">
     <li><xsl:value-of select="titulo"/>
         -><xsl:value-of select="@duracion"/></li>
    </xsl:template>
</xsl:stylesheet>
















