<?xml version="1.0" encoding="UTF-8"?>
<!--
    extract_entity.xsl
    
    An XSL transform that takes a SAML V2.0 metadata file and 
    extracts a single entity descriptor.
-->
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:md="urn:oasis:names:tc:SAML:2.0:metadata">
    
    <xsl:param name="entityID" />
    
    <xsl:template match="/">
        <xsl:copy-of select="/md:EntitiesDescriptor/md:EntityDescriptor[@entityID=$entityID]"/>
    </xsl:template>
</xsl:stylesheet>


