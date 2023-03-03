Extension: HsaHierarchy
Id: common-hsaHierarchy
Title: "HSA Hierarchy"
Description: """This extension is used to describe a unit's (Location or Organization) place in the Swedish HSA hierarchy. There are two important levels in the hierarchy:

HSA Vårdgivare (eng HSA Care Provider) - This is often a region or private healthcare provider and the highest defined level in the hierarchy
HSA Vårdenhet (eng HSA Department) - This is often a department within a region or private healthcare provider and the lower defined level in the hierarchy
All official healthcare units in Sweden will have a representation in the national HSA catalogue, and all will have a relationship to a parent HSA Vårdenhet (lower level) and/or HSA Vårdgivare (highest level).

This can among other things be used to evaluate PDL (Patientdatalagen, eng Patient Data Law) rules."""


* ^status = #active
* ^context[0].type = #element
* ^context[=].expression = "Resource"
* ^context[+].type = #element
* ^context[=].expression = "Element"

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension ^min = 0
* extension contains
    hsaCareProvider 0..1 and
    hsaCareUnit 0..1
* extension[hsaCareProvider].value[x] 1..
* extension[hsaCareProvider].value[x] only Reference(Organization)
* extension[hsaCareProvider].value[x].type = "Organization" (exactly)
* extension[hsaCareProvider].value[x].identifier.system 1..
* extension[hsaCareProvider].value[x].identifier.system = "urn:oid:1.2.752.29.4.19" (exactly)
* extension[hsaCareProvider].value[x].identifier.value 1..
* extension[hsaCareUnit].value[x] 1..
* extension[hsaCareUnit].value[x] only Reference(Organization)
* extension[hsaCareUnit].value[x].type = "Organization" (exactly)
* extension[hsaCareUnit].value[x].identifier.system 1..
* extension[hsaCareUnit].value[x].identifier.system = "urn:oid:1.2.752.29.4.19" (exactly)
* extension[hsaCareUnit].value[x].identifier.value 1..
