Profile: EncounterOutpatientWriteSe
Parent: EncounterOutpatientCoreSe
Id: EncounterOutpatientWriteSe
Title: "EncounterOutpatientWriteSe"
Description: "A Cambio profile for creating outpatients encounters (sometimes called care contacts). The mustSupport-flag indicates which attributes are supported by Cambio, meaning that they will be stored as part of the encounter.
If other attributes are included, as allowed by the profile, it will not throw an error but those will be discarded when stored in a Cambio system."
* ^purpose = "This profile is used for creating outpatient encounters/care contacts at Cambio. "
* ^url = "https://fhir.cambio.se/StructureDefinition/EncounterOutpatientWriteSe"
* ^version = "2.0.0"
* ^status = #active
* ^publisher = "Cambio Healthcare Systems AB"
* identifier MS
* status MS
* status from encounter-status-refined-valueset (required)
* type MS
* type from encounter-types-refined-valueset (required)
* subject MS
* subject only Reference(Patient)
* participant MS
  * type MS
  * individual MS
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = type
* participant ^slicing.description = "Slicing of participant in order to distinguish which participant is responsible for the encounter and who is actively participating in the encounter."
* participant ^slicing.rules = #open
* participant contains
    performingStaff 0..1 and
    responsibleStaff 0..1
* participant[performingStaff].type 1..1
* participant[performingStaff].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant[performingStaff].individual only Reference(Practitioner)
* participant[performingStaff].individual 1..
* participant[performingStaff].individual.identifier 1..
* participant[performingStaff].individual.identifier.system 1..
* participant[performingStaff].individual.identifier.system = "urn:oid:1.2.752.29.4.19"
* participant[performingStaff].individual.identifier.value 1..

* participant[responsibleStaff].type 1..1
* participant[responsibleStaff].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#RESP
* participant[responsibleStaff].individual only Reference(Practitioner)
* participant[responsibleStaff].individual 1..
* participant[responsibleStaff].individual.identifier 1..
* participant[responsibleStaff].individual.identifier.system 1..
* participant[responsibleStaff].individual.identifier.system = "urn:oid:1.2.752.29.4.19"
* participant[responsibleStaff].individual.identifier.value 1..
* period MS
* period 1..
  * start 1..
* serviceProvider MS
* extension[encounterPerformingUnit] MS
