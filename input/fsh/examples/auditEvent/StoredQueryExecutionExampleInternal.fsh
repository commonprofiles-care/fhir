Instance: StoredQueryExecutionInternalExample
InstanceOf: AuditEventLoggingInt
Description: "This is an example of following scenarios,
 1: Stored query execution that went well and returned data"
* meta.profile = "https://fhir.cambio.se/StructureDefinition/AuditEventLoggingInt|1.1.2"
* type = $DicomNemaEventType#110112
* action = http://hl7.org/fhir/audit-event-action#E
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
* entity[patient].what.identifier.system = "urn:openehr:class:EHR.ehr_id#eco-cdr-dev.ocp-01.rbc.cambio.se"
* entity[patient].what.identifier.value = "5726b29b-0335-4941-8e1c-9333bebaece5"
* entity[query].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2
* entity[query].query = "UE9TVCAvcjQvT2JzZXJ2YXRpb24vX3NlYXJjaCBIVFRQLzEuMQpIb3N0OiB0ZXN0LmZoaXIub3JnCkNvbnRlbnQtVHlwZTogYXBwbGljYXRpb24veC13d3ctZm9ybS11cmxlbmNvZGVkCkFjY2VwdDogYXBwbGljYXRpb24vZmhpcitqc29uOyBmaGlyVmVyc2lvbj00LjAKQ29udGVudC1MZW5ndGg6IDg3CgpwYXRpZW50PWV4LXBhdGllbnQmX2xhc3RVcGRhdGVkPWd0MjAyMC0xMS0wNlQyMTo1MjozMC4zMDBaJl9zb3J0PV9sYXN0VXBkYXRlZCZfY291bnQ9MTAKCgoK"
* entity[query].detail.type = "HTTP method"
* entity[query].detail.valueString = "GET"
* entity[transaction].type = https://profiles.ihe.net/ITI/BALP/CodeSystem/BasicAuditEntityType#XrequestId
* entity[transaction].what.identifier.value = "4bf92f3577b34da6a3ce929d0e0e4736"
* entity[AQLQuery].type = $AuditEventEntityTypesCS#AQLQuery
* entity[AQLQuery].query = "U0VMRUNUICAgICAgZS9laHJfaWQvdmFsdWUgQVMgZWhyX2lkLCBjL3VpZC92YWx1ZSBBUyBjb21wb3NpdGlvbklkLCBjL2FyY2h5cHRlX2RldGFpbHMvc2V0dGluZyB0b3BpY3NlSWQsIGEvZGF0YSBhdDAwMDEvZXZlbnRzL2F0MDAwMi90aW1lL3ZhbHVlIEFTIG1lYXN1cmVtZW50VGltZSwgYS9kYXRhL2F0MDAwMi9ldmVudHMvYXQwMDAyL2RhdGEvYXQwMDAzL2l0ZW1zL2F0MDAwNC92YWx1ZS9tYWduaXR1ZGUsIG8vZGF0YS9hdDAwMDEvZXZlbnRzL2F0MDAwNC9kYXRhL2F0MDAwMy9pdGVtcy9hdDAwMDIvdmFsdWUvbWVhc3VyZW1lbnRWYWx1ZSBBUyBzdGFydF90aW1lLCBhL2RhdGEvYXQwMDAyL2V2ZW50cy9hdDAwMDYvdGltZS92YWx1ZSA9PSAyMDIzLTEyLTMxVDIzOjU5OjU5Wg=="
* entity[modifiedAQLQuery].type = $AuditEventEntityTypesCS#modifiedAQLQuery
* entity[modifiedAQLQuery].query = "U0VMRUNUICAgICAgZS9laHJfaWQvdmFsdWUgQVMgZWhyX2lkLCBjL3VpZC92YWx1ZSBBUyBjb21wb3NpdGlvbklkLCBjL2FyY2h5cHRlX2RldGFpbHMvc2V0dGluZyB0b3BpY3NlSWQsIG8vZGF0YS9hdDAwMDEvZXZlbnRzL2F0MDAwMS9ldmVudHMvYXQwMDAxL3RpbWUvdmFsdWUgQVMgaGVhcnRSYXRlVGltZSwgby9kYXRhL2F0MDAwMS9ldmVudHMvYXQwMDAxL2RhdGEvYXQwMDAzL2l0ZW1zL2F0MDAwNC92YWx1ZS9tYWduaXR1ZGUsIG8vZGF0YS9hdDAwMDEvZXZlbnRzL2F0MDAwNC9kYXRhL2F0MDAwMy9pdGVtcy9hdDAwMDEvdmFsdWUvbWFnbml0dXJlIEFTIHN0YXJ0X3RpbWUsIG8vZGF0YS9hdDAwMDEvZXZlbnRzL2F0MDAwNi90b3RpbWUvdmFsdWUgPT0gMjAyMy0wMS0wMVQwMDowMDowMFoiIGFuZCBvL2RhdGEvYXQwMDAxL2V2ZW50cy9hdDAwMDYvdGltZS92YWx1ZSA9PSAyMDIzLTEyLTMxVDIzOjU5OjU5Wg=="
* entity[result].type = $AuditEventEntityTypesCS#result
* entity[result].detail[responseSize].type = "responseSize"
* entity[result].detail[responseSize].valueString = "268000"
* entity[result].detail[responseCode].type = "responseCode"
* entity[result].detail[responseCode].valueString = "200"
* entity[result].detail[responseHash].type = "responseHash"
* entity[result].detail[responseHash].valueString = "10e0d02a7a29d8e615a70d8b1d38a6a400d9bfc2487e4f7d0322d1f71a94b3d0"
* entity[result].detail[responseHashAlgorithm].type = "responseHashAlgorithm"
* entity[result].detail[responseHashAlgorithm].valueString = "SHA-256"
* entity[result].detail[filtered].type = "filtered"
* entity[result].detail[filtered].valueString = "true"
* entity[result].detail[rowCount].type = "rowCount"
* entity[result].detail[rowCount].valueString = "19"
* entity[result].detail[columnCount].type = "columnCount"
* entity[result].detail[columnCount].valueString = "6"
* entity[result].detail[columnName][+].type = "columnName"
* entity[result].detail[columnName][=].valueString = "Column A"
* entity[result].detail[columnName][+].type = "columnName"
* entity[result].detail[columnName][=].valueString = "Column B"
* entity[result].detail[columnName][+].type = "columnName"
* entity[result].detail[columnName][=].valueString = "Column C"
* entity[result].detail[columnName][+].type = "columnName"
* entity[result].detail[columnName][=].valueString = "Column D"
* entity[result].detail[columnName][+].type = "columnName"
* entity[result].detail[columnName][=].valueString = "Column E"
* entity[result].detail[columnName][+].type = "columnName"
* entity[result].detail[columnName][=].valueString = "Column F"
* entity[result].detail[_href].type = "_href"
* entity[result].detail[_href].valueString = "https://openEHRSys.example.com/v1/query/org.openehr::compositions"
* entity[result].detail[_type].type = "_type"
* entity[result].detail[_type].valueString = "RESULTSET"
* entity[result].detail[_schema_version].type = "_schema_version"
* entity[result].detail[_schema_version].valueString = "1.0.0"
* entity[result].detail[_created].type = "_created"
* entity[result].detail[_created].valueString = "2017-08-19T00:25:47.568+02:00"
* entity[result].detail[_generator].type = "_generator"
* entity[result].detail[_generator].valueString = "openEHRSys.ResultSets.Serialization.Json.ResultSetJsonWriter (5.0.0.0)"