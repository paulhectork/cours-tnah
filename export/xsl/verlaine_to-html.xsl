<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
    exclude-result-prefixes="xs" version="2.0">
    
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="TEI">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Exercice de structuration HTML</title>
            </head>
            <body>
                <h1>
                    <xsl:apply-templates select="teiHeader"/>
                </h1>
                <ul>
                    <xsl:apply-templates select="descendant::body"/>
                </ul> 
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="teiHeader">
        <!-- si on définissait des variables...
            <xsl:variable name="titre" select="descendant::title"/>
            <xsl:variable name="auteur" select="descendant::author"/> -->
        <xsl:value-of
            select="concat(descendant::title/replace(./text(), 'Mon', 'Un'), ' ', 'écrit par', ' ', descendant::author/text())"/> <!-- exercice étape 5 wouhou -->
        <!-- ça se passerait comme ça avec des variables...
            <xsl:value-of select="concat($titre, ' écrit par ', $auteur)"/> -->
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:apply-templates/>
        <ul>
            <xsl:variable name="dervers" select="count(//l)"/> <!-- question 7.1 -->
            <xsl:variable name="atttype" select="descendant::lg[1]/attribute::type"/> <!-- question 7.2 -->
            <li> <!-- question 7.1 -->
                Ce poème contient <xsl:value-of select="$dervers"/> vers.
            </li>
            <li> <!-- question 7.2 -->
                Ce <xsl:value-of select="$atttype"/> contient <xsl:value-of select="$dervers"/> vers.
            </li>
        </ul>
    </xsl:template>
    
    <xsl:template match="lg">
        <ul>
            <xsl:apply-templates/>
        </ul>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:element name="li">
            <xsl:attribute name="title">ligne <xsl:number count="l" level="any"/></xsl:attribute> <!-- exercice étape 6 done -->
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>
