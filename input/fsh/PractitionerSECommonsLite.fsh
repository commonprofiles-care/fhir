Profile: PractitionerSECommonsLite
Parent: SEBasePractitioner
Description: "This is a light weight Swedish Practitioner profile. 
                It can be used when practitioners have been referenced by other resources, such as Observation, ServiceRequest or Appointment, to fetch a minimal set of practitioner information. E.g. for display purposes. 
                It can also be used for presenting a simple list of practitioners with associated information."
* ^purpose = "To use for simple use cases where practitioner data is needed. 
                Examples could be to populate a list of practitioners for selection in a UI or including a small practitioner resource in a Bundle togehter with another resource that is referencing it."
* identifier[hsaid] MS
* identifier[hsaid] ^definition = "This slice should be used if the practitioner has a HSA id.
                            HSA id is an official identifier for healthcare organizations and practitioners in Sweden."
* identifier[hsaid].use = #official
* identifier[hsaid].system ^definition = "URI for objects (e.g. organizations or practitioners) in the HSA catalog."
* identifier[hsaid].value 1..
* identifier[hsaid].value ^definition = "HSA id"

* active ^comment = "If active is not provided it is recommended to treat the resource as active."

* name only $SEBaseHumanName
* telecom.system 1.. MS
* telecom.value 1.. MS

Alias: $SEBaseHumanName = http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseHumanName

Instance: PractitionerSELiteExample
InstanceOf: PractitionerSEVendorLite
Description: "Practitioner example."
* name
  * given[0] = "Lotta"
  * family = "Läkare"
* identifier[hsaid].value = "SE123456789-P001"
* active = true
