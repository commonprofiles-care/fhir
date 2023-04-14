Profile: ServiceRequestSelfReferralSEVendorLite
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

* basedOn ..0
* replaces ..0
* requisition ..0
* doNotPerform ..0
* quantity[x] ..0
* encounter ..0
  * ^comment = "Not applicable for self-referral as there has never been an encounter before the self-referral as it is the start of the process."
* asNeeded[x] ..0
  * ^comment = "Not applicable for self-referral"
* specimen ..0
* patientInstruction ..0
  * ^comment = "Not applicable for self-referral"

* instantiatesCanonical ..0
* instantiatesUri ..0
* category ..0
  * ^comment = "Removed as no common strategy for how to manage it among vendors and nationally"
* priority ..0
  * ^comment = "Removed as not supported by most vendors"
* code ..0
  * ^comment = "Removed as no common strategy for how to manage it among vendors and nationally"
* orderDetail ..0
  * ^comment = "Does not need to be included in a first version, not supported by multiple vendors"
* occurrence[x] ..0
  * ^comment = "Removed, self-referral is always here and now."
* performerType ..0
  * ^comment = "Not supported initially, could be good for future if we have a national list of roles/types"
* locationCode ..0
* locationReference ..0
  * ^comment = """The target "location" for the request is on performer attribute"""
* reasonReference ..0
  * ^comment = """Not supported by most vendors"""
* insurance ..0
* supportingInfo ..0
* bodySite ..0
  * ^comment = """Not supported by most vendors"""
* note ..0
  * ^comment = """Removed, should be managed in more structured ways, potentially using Q and QR"""
* relevantHistory ..0
  * ^comment = """Agreement to remove among most vendors."""
