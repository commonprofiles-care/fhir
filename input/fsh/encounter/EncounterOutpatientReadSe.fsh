Profile: EncounterOutpatientReadSe
Parent: EncounterOutpatientCoreSe
Id: EncounterOutpatientReadSe
Title: "EncounterOutpatientReadSe"
Description: "A Cambio profile for reading outpatients encounters (sometimes called care contacts). The mustSupport-flag indicates which attributes are supported by Cambio, meaning that those can be returned as part of the encounter."
* ^purpose = "This profile is used for reading outpatient encounters/care contacts at Cambio. "
* ^url = "https://fhir.cambio.se/StructureDefinition/EncounterOutpatientReadSe"
* ^version = "2.0.0"
* ^status = #active
* ^publisher = "Cambio Healthcare Systems AB"
* identifier MS
* status MS
* type MS
* type
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.description = "Defines that there must exist at least one slice of type.coding which includes a code from the Encounter Types value set."
  * coding ^slicing.rules = #open
  * coding contains
      encounterType 1..1
  * coding[encounterType] from encounter-types-valueset (required)
    * code 1..1
    * system 1..1
* subject MS
* subject only Reference(Patient)
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = type
* participant ^slicing.description = "Slicing of participant in order to distinguish which participant is responsible for the encounter and who is actively participating in the encounter."
* participant ^slicing.rules = #open
* participant contains
    performingStaff 0..1 and
    responsibleStaff 0..1
* participant[performingStaff] MS
* participant[performingStaff].type MS
* participant[performingStaff].type 1..1
* participant[performingStaff].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* participant[performingStaff].individual MS
* participant[performingStaff].individual only Reference(Practitioner)
* participant[performingStaff].individual 1..
* participant[performingStaff].individual.identifier 1..
* participant[performingStaff].individual.identifier.system 1..
* participant[performingStaff].individual.identifier.system = "urn:oid:1.2.752.29.4.19"
* participant[performingStaff].individual.identifier.value 1..

* participant[responsibleStaff] MS
* participant[responsibleStaff].type MS
* participant[responsibleStaff].type 1..1
* participant[responsibleStaff].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#RESP
* participant[responsibleStaff].individual MS
* participant[responsibleStaff].individual only Reference(Practitioner)
* participant[responsibleStaff].individual 1..
* participant[responsibleStaff].individual.identifier 1..
* participant[responsibleStaff].individual.identifier.system 1..
* participant[responsibleStaff].individual.identifier.system = "urn:oid:1.2.752.29.4.19"
* participant[responsibleStaff].individual.identifier.value 1..
* period MS
* serviceProvider MS
* extension[encounterPerformingUnit] MS