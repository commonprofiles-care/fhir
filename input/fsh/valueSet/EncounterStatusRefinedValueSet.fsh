ValueSet: EncounterStatusRefinedValueSet
Id: encounter-status-refined-valueset
Title: "Encounter Status Refined Value Set"
Description: "This value set contains a set of codes from the value set Encounter Status which are to be used when creating encounters in a Cambio system."
* ^meta.lastUpdated = "2024-11-19T10:41:43.978Z"
* ^text.status = #empty
* ^text.div = "<div></div>"
* ^url = "https://cambio.codes/vs/encounter-status-refined-value-set"
* ^experimental = false
* ^status = #active
* ^publisher = "Cambio"
* ^version = "1.0.0"
* include codes from valueset http://hl7.org/fhir/ValueSet/encounter-status
* exclude http://hl7.org/fhir/encounter-status#planned
* exclude http://hl7.org/fhir/encounter-status#triaged
* exclude http://hl7.org/fhir/encounter-status#onleave
* exclude http://hl7.org/fhir/encounter-status#missed
* exclude http://hl7.org/fhir/encounter-status#cancelled
* exclude http://hl7.org/fhir/encounter-status#entered-in-error
* exclude http://hl7.org/fhir/encounter-status#unknown