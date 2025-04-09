Profile: ServiceRequestSelfReferralSECommonsLite
Parent: ServiceRequest
Description: "This profile aims to support use cases concerning nationally defined chief complaints (SWE sökorsak) in Sweden. It can also be used to support a self referral (SWE Vårdbegäran för egen räkning) in a broader perspective."

* authoredOn 1..
  * ^comment = "Set as mandatory as needed for most systems due to waiting time requirements etc."
* performer 1..1
  * ^comment = "Id of the organization (normally via a HSA id)"
  * type = "Organization"
* performer only Reference(Organization)
* reasonCode ..1
  * ^comment = "Only one reason code is supported by most vendors, hence constrained to 0..1"

* reasonCode ^slicing.discriminator.type = #pattern
* reasonCode ^slicing.discriminator.path = "coding.code"
* reasonCode ^slicing.rules = #closed
* reasonCode ^slicing.description = "Unordered, closed, by coding.code"
* reasonCode contains
            chiefComplaint 0..1 MS

* reasonCode[chiefComplaint] from http://snomed.info/sct/45991000052106?fhir_vs=refset/60001000052100
  * ^comment = """Nationally defined implicit value set for chief complaint in Sweden (SWE sökorsak)."""
  * coding 1..1
    * system 1..
    * code 1..

*       authoredOn
    and performer
    and reasonCode
    and reasonCode[chiefComplaint]
    and reasonCode[chiefComplaint].coding
    and reasonCode[chiefComplaint].coding.system
    and reasonCode[chiefComplaint].coding.code
    MS

* intent = #order

Instance: minimal-servicerequest
InstanceOf: ServiceRequest
Description: "A simple example of a Swedish ServiceRequest resource."
Usage: #example
* meta.profile = Canonical(ServiceRequestSelfReferralSECommonsLite)
* authoredOn = "2024-04-26"
* status = #draft
* performer = Reference(maximal-organization)
* subject = Reference(maximal-patient)
* reasonCode = SCT#422400008 "kräkning"
* intent = #order

Instance: maximal-self-referral
InstanceOf: ServiceRequest
Usage: #example
Description: "A maximal example of a Swedish ServiceRequest resource."
* meta.profile = Canonical(ServiceRequestSelfReferralSECommonsLite)
* identifier
  * system = "http://example.org/referral-ids"
  * value = "REF-12345"
* status = #active
* intent = #order
* category = SCT#108252007 "Laboratory procedure"
* priority = #routine
* subject = Reference(maximal-patient)
* authoredOn = "2023-05-18T10:30:00Z"
* subject = Reference(maximal-patient)
* performer = Reference(maximal-organization)
* reasonCode = SCT#422400008 "kräkning"
  * text = "Patient complains of regular vomiting"
* note.text = "Patient reports experiencing abdominal pain for the past 3 days, which has been gradually worsening. No known triggers or relieving factors. No associated symptoms such as fever, nausea, or vomiting."
