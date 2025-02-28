Instance: EncounterOutpatientCoreSeExample
InstanceOf: EncounterOutpatientCoreSe
Description: "An example of a finished outpatient encounter at the patient's home."
Usage: #example
* meta
  * profile = "https://fhir.cambio.se/StructureDefinition/EncounterOutpatientCoreSe|1.0.0"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode/#AMB
* type = $SnomedCT#439708006
* subject
  * type = "Patient"
  * identifier
    * system = "http://electronichealth.se/identifier/personnummer"
    * value = "191212121212"
* status = #finished
* period
  * start = "2024-11-01T11:00:00Z"
  * end = "2024-11-01T12:00:00Z"
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
      * value = "SE162321024-01d2"