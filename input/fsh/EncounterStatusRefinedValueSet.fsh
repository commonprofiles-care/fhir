ValueSet: EncounterStatusRefinedValueSet
Id: encounter-status-refined-valueset
Title: "Encounter Status Refined Value Set"
Description: "This value set contains a set of codes from the value set Encounter Status which are to be used for encounters/care contacts within a Swedish context."
* ^meta.lastUpdated = "2024-11-19T10:41:43.978Z"
* ^text.status = #empty
* ^text.div = "<div></div>"
* ^url = "https://cambio.codes/vs/pdl/encounter-status-refined-value-set"
* ^experimental = false
* ^status = #active
* ^publisher = "Cambio Healthcare Systems AB"
* ^version = "1.0.0"
* include codes from valueset http://hl7.org/fhir/ValueSet/encounter-status
* exclude http://hl7.org/fhir/encounter-status#triaged
* exclude http://hl7.org/fhir/encounter-status#unknown
* exclude http://hl7.org/fhir/encounter-status#onleave
