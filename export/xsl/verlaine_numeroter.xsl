<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="TEI"> <!-- on fait des modis => <xsl:copy> -->
        <xsl:copy>
            <xsl:apply-templates/> <!-- applique les règles définies dans les <xsl:template> -->
        </xsl:copy> <!-- copie la balise TEI avec ses attr -->
    </xsl:template>
    
    <xsl:template match="teiHeader"> <!-- on copie tout et modif rien => copy-of -->
        <xsl:copy-of select="."/>
    </xsl:template> 
    
    <xsl:template match="text"> <!-- on fait des modifs => <xsl:copy> -->
        <xsl:copy select=".">
            <xsl:apply-templates/> <!-- tout copier -->
            <!-- <xsl:apply-templates select="//lg[@type='quatrain']"/> --> <!-- ne copier que les quatrains -->
            <!-- foutre le sbeul et inverser l'ordre des éléments
            <xsl:apply-templates select="//lg[@type='tercet'][2]"/>
            <xsl:apply-templates select="//lg[@type='tercet'][1]"/>
            <xsl:apply-templates select="//lg[@type='quatrain'][2]"/>
            <xsl:apply-templates select="//lg[@type='quatrain'][1]"/>
            -->
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="body"> <!-- on fait des modis => <xsl:copy> -->
        <xsl:copy select=".">
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="lg">
        <xsl:element name="lg"> <!-- pour chaque <lg> dans l'og, créer un <lg> dans sortie -->
            <xsl:attribute name="type"> <!-- créer un attribut @type qui prenne la valeur du type og -->
                <xsl:value-of select="@type"/>
            </xsl:attribute>
            <xsl:attribute name="n">
                <xsl:number count="lg" level="multiple" format="I.1.a"/>
            </xsl:attribute>
            <xsl:apply-templates/> <!-- on applique les modifs -->
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:element name="l">
            <xsl:attribute name="n">
                <xsl:number count="l" level="any" format="1"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:element>
    </xsl:template>
</xsl:stylesheet>






