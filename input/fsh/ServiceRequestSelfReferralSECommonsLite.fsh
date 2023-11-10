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
