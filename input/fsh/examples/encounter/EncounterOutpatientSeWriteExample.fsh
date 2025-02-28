Instance: EncounterOutpatientWriteSeExample
InstanceOf: EncounterOutpatientWriteSe
Description: "An example of a newly created ongoing outpatient encounter done via telephone."
Usage: #example
* meta
  * profile = "https://fhir.cambio.se/StructureDefinition/EncounterOutpatientWriteSe|2.0.0"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode/#AMB
* type = $SnomedCT#185317003
* subject
  * type = "Patient"
  * identifier
    * system = "http://electronichealth.se/identifier/personnummer"
    * value = "191212121212"
* status = #in-progress
* period
  * start = "2024-10-07T13:28:17.239+02:00"
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
