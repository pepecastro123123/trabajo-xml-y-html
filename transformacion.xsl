<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">

<html>
<head>
    <title>Catálogo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .producto {
            border: 1px solid #ccc;
            margin: 10px;
            padding: 10px;
        }
        img.qr {
            margin-top: 20px;
        }
    </style>
</head>

<body>

    <h1>Catálogo de Productos</h1>

    <!-- LISTADO DE PRODUCTOS -->
    <xsl:for-each select="catalogo/producto">
        <div class="producto">
            <h2><xsl:value-of select="nombre"/></h2>
            <p>Precio: <xsl:value-of select="precio"/> €</p>
        </div>
    </xsl:for-each>

    <!-- QR FUNCIONANDO -->
    <h2>Escanea para ver la tarjeta</h2>

    <img class="qr"
        src="https://api.qrserver.com/v1/create-qr-code/?size=300x300data=http://192.168.218.1:5500/plantilla_tarjeta.html"/>

</body>
</html>

</xsl:template>

</xsl:stylesheet>