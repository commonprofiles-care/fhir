Instance: CreateCompositionExample
InstanceOf: AuditEventLoggingInt
Description: "This is an example of following scenarios,
 1: Create composition successfully"
* meta.profile = "https://fhir.cambio.se/StructureDefinition/AuditEventLoggingInt|1.1.2"
* type = $DicomNemaEventType#110110
* action = #C
* period.start = "2021-03-28T13:28:17.239+02:00"
* period.end = "2021-03-28T13:28:17.239+02:00"
* recorded = "2022-02-07T13:28:17.239+02:00"
* agent[application].type = $DicomNemaEventType#110150
* agent[application].who.identifier.value = "Application ID"
* agent[application].requestor = true

* agent[practitioner].type.coding[employedPractitioner] = $AuditEventAgentTypeCS#EmployedPractitioner
* agent[practitioner].type.coding[caregiverInformationReceiver] = http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#AUCG
* agent[practitioner].who.identifier.value = "SE162321000016-4kx7"
* agent[practitioner].requestor = true

* agent[commission].type.coding[practitionerCommission] = $AuditEventAgentTypeCS#Commission
* agent[commission].type.coding[caregiverInformationReceiver] = http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction#AUCG
* agent[commission].who.identifier.value = "SE162321000016-e78a"
* agent[commission].requestor = true

* agent[careprovider].type.coding[commissionPDLCareProvider] = $AuditEventAgentTypeCS#CommissionPDLCareProvider
* agent[careprovider].type.coding[healthcareProvider] = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV
* agent[careprovider].who.identifier.value = "SE162321000016-d48a"
* agent[careprovider].requestor = true

* agent[careunit].type.coding[commissionPDLCareUnit] = $AuditEventAgentTypeCS#CommissionPDLCareUnit
* agent[careunit].type.coding[healthcareProvider] = http://terminology.hl7.org/CodeSystem/v3-RoleClass#PROV
* agent[careunit].who.identifier.value = "SE162321000016-efca"
* agent[careunit].requestor = true

* source.observer.identifier.value = "cdr-dev.ocp-01.rbc.cambio.se"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1
* entity[patient].what.identifier.system = "http://electronichealth.se/identifier/personnummer"
* entity[patient].what.identifier.value = "191212121212"
* entity[query].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2
* entity[query].query = "UE9TVCAvcjQvT2JzZXJ2YXRpb24vX3NlYXJjaCBIVFRQLzEuMQpIb3N0OiB0ZXN0LmZoaXIub3JnCkNvbnRlbnQtVHlwZTogYXBwbGljYXRpb24veC13d3ctZm9ybS11cmxlbmNvZGVkCkFjY2VwdDogYXBwbGljYXRpb24vZmhpcitqc29uOyBmaGlyVmVyc2lvbj00LjAKQ29udGVudC1MZW5ndGg6IDg3CgpwYXRpZW50PWV4LXBhdGllbnQmX2xhc3RVcGRhdGVkPWd0MjAyMC0xMS0wNlQyMTo1MjozMC4zMDBaJl9zb3J0PV9sYXN0VXBkYXRlZCZfY291bnQ9MTAKCgoK"
* entity[query].detail.type = "HTTP method"
* entity[query].detail.valueString = "POST"
* entity[transaction].type = https://profiles.ihe.net/ITI/BALP/CodeSystem/BasicAuditEntityType#XrequestId
* entity[transaction].what.identifier.value = "4bf92f3577b34da6a3ce929d0e0e4736"
* entity[result].type = $AuditEventEntityTypesCS#result
* entity[result].detail[responseSize].type = "responseSize"
* entity[result].detail[responseSize].valueString = "356120"
* entity[result].detail[responseCode].type = "responseCode"
* entity[result].detail[responseCode].valueString = "200"
* entity[result].detail[responseHash].type = "responseHash"
* entity[result].detail[responseHash].valueString = "10e0d02a7a29d8e615a70d8b1d38a6a400d9bfc2487e4f7d0322d1f71a94b3d0"
* entity[result].detail[responseHashAlgorithm].type = "responseHashAlgorithm"
* entity[result].detail[responseHashAlgorithm].valueString = "SHA-256"


