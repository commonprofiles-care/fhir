Profile: BaseAuditEventLogging
Parent: AuditEvent
Description: "This is an AuditEvent profile used for logging. The mustSupport-flag indicates that a producer of resources conforming to this profile SHALL include this data if it is known to them."
* ^version = "1.0.3"
* ^abstract = true
* action MS

* period 1..
* period.start 1..
* period.end 1..

* agent.type from AuditEventAgentTypesValueSetSE

* entity ^slicing.discriminator.type = #pattern
* entity ^slicing.discriminator.path = "type"
* entity ^slicing.rules = #closed
* entity ^slicing.description = "Slice for entity with the purpose of distinguishing between the patient, the transaction and the api request made."
* entity ^slicing.ordered = false
* entity contains
    patient ..* and
    query ..1 and
    transaction 1..1 and
    AQLQuery ..1 and
    modifiedAQLQuery ..1 and
    result 1..1
* entity[patient].type MS
* entity[patient].type.system 1..
* entity[patient].type.code 1..
* entity[patient].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#1
* entity[patient].role MS
* entity[patient].role = http://terminology.hl7.org/CodeSystem/object-role#1
* entity[patient].what MS
* entity[patient].what only Reference(Patient)
* entity[query].type MS
* entity[query].type.system 1..
* entity[query].type.code 1..
* entity[query].type = http://terminology.hl7.org/CodeSystem/audit-entity-type#2
* entity[query].what ..0
* entity[query].query 1..   
* entity[transaction].type MS
* entity[transaction].type.system 1..
* entity[transaction].type.code 1..
* entity[transaction].type = https://profiles.ihe.net/ITI/BALP/CodeSystem/BasicAuditEntityType#XrequestId
* entity[transaction].what ^type.aggregation = #referenced
* entity[transaction].what.identifier 1..1
* entity[transaction].what.identifier.value 1..1
* entity[AQLQuery].type MS
* entity[AQLQuery].type.system 1..
* entity[AQLQuery].type.code 1..
* entity[AQLQuery].type = https://cambio.codes/cs/audit-event-entity-types#AQLQuery
* entity[AQLQuery].what ..0
* entity[AQLQuery].query 1..
* entity[modifiedAQLQuery].type MS
* entity[modifiedAQLQuery].type.system 1..
* entity[modifiedAQLQuery].type.code 1..
* entity[modifiedAQLQuery].type = https://cambio.codes/cs/audit-event-entity-types#modifiedAQLQuery
* entity[modifiedAQLQuery].what ..0
* entity[modifiedAQLQuery].query 1..
* entity[result].type MS
* entity[result].type.system 1..
* entity[result].type.code 1..
* entity[result].type = https://cambio.codes/cs/audit-event-entity-types#result
* entity[result].what ..0

* entity[result].detail ^slicing.discriminator.type = #value
* entity[result].detail ^slicing.discriminator.path = "type"
* entity[result].detail ^slicing.rules = #closed
* entity[result].detail ^slicing.description = "Slice for entity[result] with the purpose of distinguishing between a set of fixed request and result related metadata"
* entity[result].detail ^slicing.ordered = false
* entity[result].detail contains
    responseSize 0.. and
    responseCode 1.. and
    rowCount 0.. and
    columnCount 0.. and
    columnName 0..* and
    responseHash 0.. and
    responseHashAlgorithm 0.. and
    filtered 0.. and
     _href 0.. and
    _type 0.. and
    _schema_version 0.. and
    _created 0.. and
    _generator 0..

* entity[result].detail[responseSize].type = "responseSize"
* entity[result].detail[responseSize].value[x] only string

* entity[result].detail[responseCode].type = "responseCode"
* entity[result].detail[responseCode].value[x] only string

* entity[result].detail[rowCount].type = "rowCount"
* entity[result].detail[rowCount].value[x] only string

* entity[result].detail[columnCount].type = "columnCount"
* entity[result].detail[columnCount].value[x] only string

* entity[result].detail[columnName].type = "columnName"
* entity[result].detail[columnName].value[x] only string

* entity[result].detail[responseHash].type = "responseHash"
* entity[result].detail[responseHash].value[x] only string

* entity[result].detail[responseHashAlgorithm].type = "responseHashAlgorithm"
* entity[result].detail[responseHashAlgorithm].value[x] only string

* entity[result].detail[filtered].type = "filtered"
* entity[result].detail[filtered].value[x] only string

* entity[result].detail[_href].type = "_href"
* entity[result].detail[_href].value[x] only string

* entity[result].detail[_type].type = "_type"
* entity[result].detail[_type].value[x] only string

* entity[result].detail[_schema_version].type = "_schema_version"
* entity[result].detail[_schema_version].value[x] only string

* entity[result].detail[_created].type = "_created"
* entity[result].detail[_created].value[x] only string

* entity[result].detail[_generator].type = "_generator"
* entity[result].detail[_generator].value[x] only string
