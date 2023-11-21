CodeSystem: AuditEventEntityTypes
Id: audit-event-entity-types
Title: "AuditEventEntityTypes"
Description: "Specifies the type codes used for entities that play a part in an audit event. Does not include codes already definied elsewhere by well-renowned actors."
* ^url = "https://cambio.codes/cs/audit-event-entity-types"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^publisher = "Cambio"
* #result "Result"
    "The result from an API request. Will be used to group result related metadata in the audit log."
* #AQLQuery "AQL Query"
    "The original, unmodified AQL query invoked by an openEHR API consumer. Will be used to type an entity element as one where audit data related to the unmodified AQL query will be grouped."
* #modifiedAQLQuery "Modified AQL Query"
    "The modified AQL query, meaning the AQL query that was actually executed. This can be different from the unmodified AQL query due to mechanisms in the CDR where i.e. business specific filter functionality is injected in AQL queries based on the context of the API request."