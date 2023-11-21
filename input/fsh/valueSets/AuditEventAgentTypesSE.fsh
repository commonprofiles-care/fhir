ValueSet: AuditEventAgentTypesValueSetSE
Id: audit-event-agent-type
Title: "Audit Event Agent Types Value Set SE"
Description: "This value set contains all codes from the code system Audit Event Agent Types SE and also codes from the extensible FHIR value set Participation Role Type."
* ^meta.lastUpdated = "2023-02-21T10:41:43.978Z"
* ^text.status = #empty
* ^text.div = "<div></div>"
* ^url = "https://cambio.codes/vs/pdl/audit-event-agent-types-value-set-SE"
* ^experimental = false
* ^status = #active
* ^publisher = "Cambio"
* ^version = "1.0.1"
* include codes from valueset http://hl7.org/fhir/ValueSet/participation-role-type
* $AuditEventAgentTypeCS#EmployedPractitioner "EmployedPractitioner"
* $AuditEventAgentTypeCS#Commission "Commission"
* $AuditEventAgentTypeCS#CommissionPDLCareProvider "CommissionPDLCareProvider"
* $AuditEventAgentTypeCS#CommissionPDLCareUnit "CommissionPDLCareUnit"