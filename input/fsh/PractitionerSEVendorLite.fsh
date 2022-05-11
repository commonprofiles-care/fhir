Profile: PractitionerSEVendorLite
Parent: Practitioner
Description: "This is a light weight Swedish Practitioner profile. 
                It can be used when practitioners have been referenced by other resources, such as Observation, ServiceRequest or Appointment, to fetch a minimal set of practitioner information. E.g. for display purposes. 
                It can also be used for presenting a simple list of practitioners with associated information."
* ^purpose = "To use for simple use cases where practitioner data is needed. 
                Examples could be to populate a list of practitioners for selection in a UI or including a small practitioner resource in a Bundle togehter with another resource that is referencing it."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Unordered, Open, by system(Value)"
* identifier contains hsaid ..1 MS
* identifier[hsaid] ^definition = "This slice should be used if the practitioner has a HSA id. 
                            HSA id is an official identifier for healthcare organizations and practitioners in Sweden."
* identifier[hsaid].use = #official
* identifier[hsaid].type.coding ..1
* identifier[hsaid].type.coding.system = "https://www.hl7.org/fhir/v2/0203/index.html"
* identifier[hsaid].type.coding.code = #PRN
* identifier[hsaid].system 1..
* identifier[hsaid].system ^definition = "URI for objects (e.g. organizations or practitioners) in the HSA catalog."
* identifier[hsaid].system = "urn:oid:1.2.752.129.2.1.4.1"
* identifier[hsaid].value 1..
* identifier[hsaid].value ^definition = "HSA id"
* identifier[hsaid].period ..0
* identifier[hsaid].period ^comment = "Removed as this profile will provide current HSA ids"
* identifier[hsaid].assigner ..0
* identifier[hsaid].assigner ^comment = "Removed as there is no practical use of the assigner of an HSA id"

* active ^comment = "If active is not provided it is recommended to treat the resource as active."

* name only $SEBaseHumanName
* telecom.system 1..
* telecom.value 1..
* telecom.period ..0

* address ..0
* gender ..0
* birthDate ..0
* photo ..0
* qualification ..0
* communication ..0

Alias: $SEBaseHumanName = http://hl7.se/fhir/ig/base/StructureDefinition/SEBaseHumanName