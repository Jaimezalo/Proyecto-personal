<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/">

<html>
  
    <head>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="pagina_Inicio.css"/>
        <link rel="icon" type="image/png" href="imagenes/favicon.ico" sizes="16x16"/>
        <title>MUSIC STORE</title>

    </head>
    <header>
        <h1>MUSIC STORE</h1>
    </header>
    
    <body>
        
        <main>
        
            <div id="albumes">
                <div id="cabecera">
                    <table>
                        <tr>
                            <th><td>TITULO</td></th>
                            <th><td>DURACION</td></th>
                            <th><td><audio src="../music/take-on-me.mp3" controls="controls" type="audio/mpeg" preload="preload"></audio></td></th>
                        </tr>
                    </table>
                </div>
            <table>
                    <xsl:apply-templates select="//cancion"/>                    
            </table>
            </div>
            
            <div id="inicio">
                <a href="pagina_Inicio.html"><button>INICIO</button></a> 
            </div>
        </main>

        <aside>
            <table>
                <tr><td><a href="imagenes/contacto.JPG" target="_blank" onClick="window.open(this.href, this.target, 'width=300,height=400'); return true;">CONTACTO</a></td></tr>
                <tr><td><a href="https://www.google.com/maps/place/IES+Tetu%C3%A1n+de+las+Victorias/@40.4731759,-3.6997766,17z/data=!3m1!4b1!4m5!3m4!1s0xd422912c3f95711:0xfd6d0a1eb67bcfc!8m2!3d40.4731759!4d-3.6975879" target="_blank">Donde estamos</a></td></tr>
                <tr><td><a href="#">Documentación</a></td></tr> 
                <tr><td><a href="#"><img src="imagenes/github.png" width="40" height="40"/><br/>Guillermo</a></td></tr>
                <tr><td><a href="https://github.com/Jaimezalo"><img src="imagenes/github.png" width="40" height="40"/><br/>Jaime</a></td></tr>
            </table>
        </aside>
        
    </body>

</html>
     </xsl:template>
        <xsl:template match="cancion">
            <tr>
            <td><xsl:value-of select="titulo"/></td>
            <td><xsl:value-of select="@duracion"/></td>
            </tr>
        </xsl:template>
  
    
</xsl:stylesheet>
