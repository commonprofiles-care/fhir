Profile: AuditEventLoggingInt
Parent: BaseAuditEventLogging
Title: "AuditEventLoggingInt"
Description: "This is an AuditEvent profile used for logging. The mustSupport-flag indicates that a producer of resources conforming to this profile SHALL include this data if it is known to them."
* ^url = "https://fhir.cambio.se/StructureDefinition/AuditEventLoggingInt"
* ^version = "1.1.2"
* ^status = #active
* agent ^slicing.discriminator.type = #pattern
* agent ^slicing.discriminator.path = "type.coding"
* agent ^slicing.description = "Slice for agent with the purpose of distinguishing between different agents involved in the event that is logged."
* agent ^slicing.rules = #open
* agent 5..

* agent contains
    application 1..1 and
    practitioner 1..1 and
    commission 1..1 and
    careprovider 1..1 and
    careunit 1..1

* agent[application].type 1..
* agent[application].type.coding 1..1
* agent[application].type.coding.system 1..
* agent[application].type.coding.code 1..
* agent[application].type.coding = http://dicom.nema.org/resources/ontology/DCM#110150

* agent[practitioner].type 1..
* agent[practitioner].type.coding 2..2
* agent[practitioner].type.coding ^slicing.discriminator.type = #pattern
* agent[practitioner].type.coding ^slicing.discriminator.path = "$this"
* agent[practitioner].type.coding ^slicing.description = "Slice for agent[practitioner].type.coding in order to define two different codings needed, one from the value set defined in the AuditEvent resource and one from another code system."
* agent[practitioner].type.coding ^slicing.rules = #closed
* agent[practitioner].type.coding contains
    employedPractitioner 1..1 and
    caregiverInformationReceiver 1..1

* agent[practitioner].type.coding[employedPractitioner].system 1..
* agent[practitioner].type.coding[employedPractitioner].code 1..
* agent[practitioner].type.coding[employedPractitioner] = $AuditEventAgentTypeCS#EmployedPractitioner
* agent[practitioner].type.coding[caregiverInformationReceiver].system 1..
* agent[practitioner].type.coding[caregiverInformationReceiver].code 1..
* agent[practitioner].type.coding[caregiverInformationReceiver] = http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#AUCG
* agent[practitioner].who ^type.aggregation = #referenced
* agent[practitioner].who only Reference(Practitioner)

* agent[commission].type 1..
* agent[commission].type.coding ^slicing.discriminator.type = #pattern
* agent[commission].type.coding ^slicing.discriminator.path = "$this"
* agent[commission].type.coding ^slicing.description = "Slice for agent[commission].type.coding in order to define two different codings needed, one from the value set defined in the AuditEvent resource and one from another code system."
* agent[commission].type.coding ^slicing.rules = #closed
* agent[commission].type.coding contains
    practitionerCommission 1..1 and
    caregiverInformationReceiver 1..1

* agent[commission].type.coding[practitionerCommission] 1..1
* agent[commission].type.coding[practitionerCommission].system 1..
* agent[commission].type.coding[practitionerCommission].code 1..
* agent[commission].type.coding[practitionerCommission] = $AuditEventAgentTypeCS#Commission
* agent[commission].type.coding[caregiverInformationReceiver] 1..1
* agent[commission].type.coding[caregiverInformationReceiver].system 1..
* agent[commission].type.coding[caregiverInformationReceiver].code 1..
* agent[commission].type.coding[caregiverInformationReceiver] = http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#AUCG
* agent[commission].who ^type.aggregation = #referenced
* agent[commission].who only Reference(PractitionerRole)

* agent[careprovider].type 1..
* agent[careprovider].type.coding ^slicing.discriminator.type = #pattern
* agent[careprovider].type.coding ^slicing.discriminator.path = "$this"
* agent[careprovider].type.coding ^slicing.description = "Slice for agent[careprovider].type.coding in order to define two different codings needed, one from the value set defined in the AuditEvent resource and one from another code system."
* agent[careprovider].type.coding ^slicing.rules = #closed
* agent[careprovider].type.coding contains
    commissionPDLCareProvider 1..1 and
    healthcareProvider 1..1
* agent[careprovider].type.coding[commissionPDLCareProvider] 1..1
* agent[careprovider].type.coding[commissionPDLCareProvider].system 1..
* agent[careprovider].type.coding[commissionPDLCareProvider].code 1..
* agent[careprovider].type.coding[commissionPDLCareProvider] = $AuditEventAgentTypeCS#CommissionPDLCareProvider
* agent[careprovider].type.coding[healthcareProvider] 1..1
* agent[careprovider].type.coding[healthcareProvider].system 1..
* agent[careprovider].type.coding[healthcareProvider].code 1..
* agent[careprovider].type.coding[healthcareProvider] = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV
* agent[careprovider].who ^type.aggregation = #referenced
* agent[careprovider].who only Reference(Organization)

* agent[careunit].type 1..
* agent[careunit].type.coding ^slicing.discriminator.type = #pattern
* agent[careunit].type.coding ^slicing.discriminator.path = "$this"
* agent[careunit].type.coding ^slicing.description = "Slice for agent[careunit].type.coding in order to define two different codings needed, one from the value set defined in the AuditEvent resource and one from another code system."
* agent[careunit].type.coding ^slicing.rules = #closed
* agent[careunit].type.coding contains
    commissionPDLCareUnit 1..1 and
    healthcareProvider 1..1
* agent[careunit].type.coding[commissionPDLCareUnit] 1..1
* agent[careunit].type.coding[commissionPDLCareUnit].system 1..
* agent[careunit].type.coding[commissionPDLCareUnit].code 1..
* agent[careunit].type.coding[commissionPDLCareUnit] = $AuditEventAgentTypeCS#CommissionPDLCareUnit
* agent[careunit].type.coding[healthcareProvider] 1..1
* agent[careunit].type.coding[healthcareProvider].system 1..
* agent[careunit].type.coding[healthcareProvider].code 1..
* agent[careunit].type.coding[healthcareProvider] = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV
* agent[careunit].who ^type.aggregation = #referenced
* agent[careunit].who only Reference(Organization)