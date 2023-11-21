Profile: AuditEventLoggingServiceAccount
Parent: BaseAuditEventLogging
Title: "AuditEventLoggingServiceAccount"
Description: "This is an AuditEvent profile used for logging when a service account is making the API requests. The mustSupport-flag indicates that a producer of resources conforming to this profile SHALL include this data if it is known to them."
* ^url = "https://fhir.cambio.se/StructureDefinition/AuditEventLoggingServiceAccount"
* ^version = "1.1.1"
* ^status = #active
* agent 1..1
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type.coding"
* agent ^slicing.rules = #closed
* agent ^slicing.description = "Slice for agent.type with the purpose of distinguishing different agents involved in the event that is logged."
* agent ^slicing.ordered = false
* agent contains
    service 1..1

* agent[service].type 1..
* agent[service].type.coding 1..1
* agent[service].type.coding.system 1..
* agent[service].type.coding.code 1..
* agent[service].type.coding = http://dicom.nema.org/resources/ontology/DCM#110150
* agent[service].who 1..
* agent[service].who only Reference(Device)
* agent[service].who.identifier.system 1..
* agent[service].who.identifier.value 1..
