<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PatientSEVendorLite
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient/f:name</sch:title>
    <sch:rule context="f:Patient/f:name">
      <sch:assert test="count(f:extension[@url = 'http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseMiddleNameExtension']) &lt;= 1">extension with URL = 'http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseMiddleNameExtension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOwnFamilyExtension']) &lt;= 1">extension with URL = 'http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseOwnFamilyExtension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:name/f:given</sch:title>
    <sch:rule context="f:Patient/f:name/f:given">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address</sch:title>
    <sch:rule context="f:Patient/f:address">
      <sch:assert test="count(f:extension[@url = 'http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseAddressPersonExtension']) &lt;= 1">extension with URL = 'http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseAddressPersonExtension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
