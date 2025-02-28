Instance: EncounterOutpatientReadSeExample
InstanceOf: EncounterOutpatientReadSe
Description: "An example of a planned outpatient encounter that will be performed via telephone."
Usage: #example
* meta
  * profile = "https://fhir.cambio.se/StructureDefinition/EncounterOutpatientReadSe|2.0.0"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode/#AMB
* type
  * coding = https://cambio.codes/cs/encounter-types#annan
  * text = "Multidisciplinär konferens"
* subject
  * type = "Patient"
  * identifier
    * system = "http://electronichealth.se/identifier/personnummer"
    * value = "191212121212"
* status = #planned
* participant
  * type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
  * individual
    * identifier
      * system = "urn:oid:1.2.752.29.4.19"
      * value = "SE162321000016-320d"
* serviceProvider
  * identifier
    * system = "urn:oid:1.2.752.29.4.19"
    * value = "SE162321000016-efca"
* extension
  * url = "https://fhir.cambio.se/StructureDefinition/encounterPerformingUnit"
  * valueReference
    * type = "Organization"
    * identifier
      * system = "urn:oid:1.2.752.29.4.19"
      * value = "SE162321000016-efca"
