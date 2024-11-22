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

Instance: minimal-practitioner
InstanceOf: PractitionerSECommonsLite
Description: "A simple example of a Swedish Practitioner resource."
Usage: #example
* meta.profile = Canonical(PractitionerSECommonsLite)
* identifier
  * use = #official
  * type = IDENTIFIER_TYPE#PRN
  * system = "urn:oid:1.2.752.29.4.19"
  * value = "SE2321000016-A123"
* active = true
* name
  * use = #official
  * family = "Johansson"
  * given = "Erik"
  * prefix = "Dr."
* telecom[0]
  * system = #phone
  * value = "+46101234567"
  * use = #work
* telecom[+]
  * system = #email
  * value = "erik.johansson@example.se"
  * use = #work

Instance: maximal-practitioner
InstanceOf: PractitionerSECommonsLite
Description: "A more thorough example of a Swedish Practitioner resource."
Usage: #example
* meta.profile = Canonical(PractitionerSECommonsLite)
* identifier
  * use = #official
  * type = IDENTIFIER_TYPE#PRN "Provider number"
  * system = "urn:oid:1.2.752.29.4.19"
  * value = "SE1234567890"
  * period.start = "2024-01-01"
* active = true
* name
  * use = #official
  * family = "Larsson"
  * given = "Erik"
  * suffix = "MD"
  * text = "Dr. Erik Larsson MD"
* telecom[0]
  * system = #phone
  * value = "+46701234567"
  * use = #work
* telecom[+]
  * system = #email
  * value = "erik.larsson@healthcare.se"
  * use = #work
* address
  * use = #work
  * type = #both
  * text = "123 Healthcare Street, 112 16 Stockholm"
  * line = "123 Healthcare Street"
  * city = "Stockholm"
  * district = "Stockholm County"
  * postalCode = "112 16"
  * country = "Sweden"
* qualification
  * identifier[0]
    * system = "urn:oid:1.2.752.116.3.1.2"
    * value = "Prescriber123"
  * identifier[+]
    * system = "urn:oid:1.2.752.116.3.1.1"
    * value = "Legitimation456"
  * code
    * coding[+] = SCT#3842006 "Chiropractor"
  * period.start = "2020-01-01"
  * issuer.display = "Swedish Medical License Board"

