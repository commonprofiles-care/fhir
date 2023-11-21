Instance: CreateCompositionServiceAccountInternalExample
InstanceOf: AuditEventLoggingServiceAccount
Description: "This is an example of following scenarios,
 1: Create composition successfully for service accounts"
* meta.profile = "https://fhir.cambio.se/StructureDefinition/AuditEventLoggingServiceAccount|1.1.1"
* type = $DicomNemaEventType#110110
* action = #C
* period.start = "2023-03-28T13:28:17.239+02:00"
* period.end = "2023-03-28T13:28:17.239+02:00"
* recorded = "2023-03-28T13:28:19.239+02:00"
* agent[service].type = $DicomNemaEventType#110150
* agent[service].who.identifier.system = "https://keycloak-cambio-platform-services-rh-sso.apps.ocp-01.cambio.rbcloud.net/auth/realms/cambio-platform"
* agent[service].who.identifier.value = "client_id_from_JWT"
* agent[service].requestor = true

* source.observer.identifier.value = "cdr-dev.ocp-01.rbc.cambio.se"
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1
* entity[patient].what.identifier.system = "urn:openehr:class:EHR.ehr_id#eco-cdr-dev.ocp-01.rbc.cambio.se"
* entity[patient].what.identifier.value = "5726b29b-0335-4941-8e1c-9333bebaece5"
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