Extension: EncounterPerformingUnit
Id: encounterPerformingUnit
Title: "encounterPerformingUnit"
Description: "Identification of the organisational unit at which an encounter is performed."
Context: Encounter
* ^status = #active
* ^url = "https://fhir.cambio.se/StructureDefinition/encounterPerformingUnit"
* ^version = "1.0.0"
* value[x] 1..
* value[x] only Reference(Organization)
* value[x].type = "Organization"
* value[x].identifier.system 1..
* value[x].identifier.system = "urn:oid:1.2.752.29.4.19"
* value[x].identifier.value 1..