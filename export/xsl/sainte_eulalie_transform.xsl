<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <xsl:output method="xml" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="TEI">
        <xsl:copy>
            <xsl:apply-templates/>
            <!-- <xsl:apply-templates mode="etape1"/> -->
        </xsl:copy>
    </xsl:template>
    
    <!-- étape 2 -->
    <xsl:template match="teiHeader">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="text">
        <xsl:copy select="."/>
    </xsl:template>
    
    <xsl:template match="head">
        <xsl:copy select="."/>
    </xsl:template>
    <!--
    <xsl:template match="pb">
        <xsl:copy-of select="."/>
    </xsl:template>
    -->

    <!-- étape 1 -->
    <xsl:template match="." mode="etape1">
        <xsl:copy-of select="."/>
    </xsl:template>
    
</xsl:stylesheet>