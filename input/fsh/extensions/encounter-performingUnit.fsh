Extension: EncounterPerformingUnit
Id: encounterPerformingUnit
Title: "encounterPerformingUnit"
Description: "Identification of the organisational unit in which an encounter is performed."
* ^status = #active
* ^url = "https://fhir.cambio.se/StructureDefinition/encounterPerformingUnit"
* ^version = "1.0.0"
* ^context.type = #extension
* ^context.expression = "o be used in Encounter profiles with the purpose of representing the organisational unit in which the encounter is performed."
* value[x] 1..
* value[x] only Reference(Organization)
* value[x].type = "Organization"
* value[x].identifier.system 1..
* value[x].identifier.system = "urn:oid:1.2.752.29.4.19"
* value[x].identifier.value 1..