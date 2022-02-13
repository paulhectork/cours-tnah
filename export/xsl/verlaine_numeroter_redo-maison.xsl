<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="TEI">
        <xsl:copy-of select="teiHeader"/>
        <xsl:copy select="text">
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="lg">
        <xsl:copy select=".">
            <xsl:attribute name="type">
                <xsl:value-of select="./@type"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="lg/lg">
        <xsl:copy select=".">
            <xsl:attribute name="type">
                <xsl:value-of select="./@type"/>
            </xsl:attribute>
            <xsl:attribute name="n">
                <xsl:number count="lg" level="multiple" format="I.a"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:copy select=".">
            <xsl:attribute name="n">
                <xsl:number count="l" level="multiple" format="1"/>
            </xsl:attribute>
            <xsl:value-of select="."/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>