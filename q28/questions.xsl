<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Question Paper</title>
                <style>
                    body { font-family: Arial; margin: 20px; }
                    .question { margin-bottom: 20px; }
                    .options { margin-left: 20px; }
                </style>
            </head>
            <body>
                <h2>Questions</h2>
                <xsl:for-each select="questions/question">
                    <div class="question">
                        <p>
                            <strong>Q: </strong>
                            <xsl:value-of select="text"/>
                        </p>
                        <div class="options">
                            <xsl:for-each select="option">
                                <div>
                                    <xsl:value-of select="."/>
                                </div>
                            </xsl:for-each>
                        </div>
                    </div>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
