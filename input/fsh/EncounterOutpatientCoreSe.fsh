Profile: EncounterOutpatientCoreSe
Parent: Encounter
Id: EncounterOutpatientCoreSe
Title: "EncounterOutpatientCoreSe"
Description: "This is an Encounter profile to be used for outpatient encounters (care contacts), in a Swedish context."
* ^purpose = "This profile is used for representing outpatient encounters in a Swedish context."
* ^url = "https://fhir.cambio.se/StructureDefinition/EncounterOutpatientCoreSe"
* ^version = "1.0.0"
* ^status = #active
* ^publisher = "Cambio Healthcare Systems AB"
* obeys finished-encounter-invariant
* obeys in-progress-encounter-invariant
* obeys planned-encounter-invariant
* obeys arrived-encounter-invariant
* class = #AMB
* type 1..1
  * coding from encounter-status-refined-valueset (required)
  * coding 1..
    * system 1..
    * code 1..
* subject obeys patient-identifier-system-invariant
* subject 1..
  * identifier 1..
    * system 1..
    * value 1..
* basedOn ..1
* serviceProvider 1..
  * identifier 1..
    * system 1..
    * system = "urn:oid:1.2.752.29.4.19"
    * value 1..
* extension contains encounterPerformingUnit named encounterPerformingUnit 1..1