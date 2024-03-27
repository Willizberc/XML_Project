<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>
                    <xsl:value-of select="/microBlog/user/name"/>
                </h1>
                <h2>
                    <xsl:text>Posts:</xsl:text>
                </h2>
                <ul>
                    <xsl:for-each select="/microBlog/user/posts/post">
                        <li>
                            <xsl:value-of select="content"/>
                            <xsl:text> (</xsl:text>
                            <xsl:value-of select="likes"/>
                            <xsl:text> likes)</xsl:text>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>