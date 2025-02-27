Instance: EncounterOutpatientCoreSeExample
InstanceOf: EncounterOutpatientCoreSe
Description: "An example of an encounter"
Usage: #example
* meta
  * profile = "https://fhir.cambio.se/StructureDefinition/EncounterOutpatientCoreSe|1.0.0"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode/#AMB
* type = $SnomedCT#33879002
* subject
  * identifier
    * system = "hhttp://electronichealth.se/identifier/personnummer"
    * value = "191212121212"
* status = #finished
* period
  * start = "2024-11-01T11:00:00Z"
  * end = "2024-11-01T12:00:00Z"
* serviceProvider
  * identifier
    * system = "urn:oid:1.2.752.29.4.19"
    * value = "SE162321000016-efca"
* extension[0]
  * url = "https://fhir.cambio.se/StructureDefinition/encounterPerformingUnit|1.0.0"
  * valueReference
    * type = "Organization"
    * identifier
      * system = "urn:oid:1.2.752.29.4.19"
      * value = "SE162321024-01d2"