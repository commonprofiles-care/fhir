
### Read Composition that is returned
The following summary describes the information created for the following scenario:<br/>

>Doctor A uses an application to retrieve Patient X' latest journal note, which is then successfully shown to the Doctor
<br/>

Additional scenarios are also supported and will be added...

**AuditEvent result**

AuditEvent.type.code = `110110` *(Patient Record)*<br/>
AuditEvent.type.system = `http://dicom.nema.org/resources/ontology/DCM`<br/>
AuditEvent.action = `R` *(Read)*<br/>
AuditEvent.recorded = *time of API call*<br/>
AuditEvent.agent[1].type = `110150` *(Application)*<br/>
AuditEvent.agent[1].type.system = `http://dicom.nema.org/resources/ontology/DCM`<br/>
AuditEvent.agent[1].who.identifier.value = *Logical Ref → Device, using Application ID for device making the request*<br/>
AuditEvent.agent[2].type.coding[1].code = `AUCG` *(Caregiver information receiever)*<br/>
AuditEvent.agent[2].type.coding[1].system = `http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction`<br/>
AuditEvent.agent[2].type.coding[2].code = `EmployedPractitioner`<br/>
AuditEvent.agent[2].type.coding[2].system = `https://cambio.codes/cs/AuditEventAgentTypesSE`<br/>
AuditEvent.agent[2].who.identifier.value = *Logical Ref -> Practitioner, using HSA-id for Doctor A. Matches http://sambi.se/attributes/1/employeeHsaId from the OIDC JWT.*<br/>
AuditEvent.agent[3].type.coding[1].code = `PROV` *(Healthcare provider)*<br/>
AuditEvent.agent[3].type.coding[1].system = `http://terminology.hl7.org/CodeSystem/v3-RoleClass`<br/>
AuditEvent.agent[3].type.coding[2].code = `CommissionPDLCareUnit`<br/>
AuditEvent.agent[3].type.coding[2].system = `https://cambio.codes/cs/AuditEventAgentTypesSE`<br/>
AuditEvent.agent[3].who.identifier.value = *Logical Ref → Organization, using HSA-id for logged-in unit/working unit. Matches http://sambi.se/attributes/1/healthCareUnitHsaId from the OIDC JWT.*<br/>
AuditEvent.agent[4].type.coding[1].code = `AUCG` *(Caregiver information receiever)*<br/>
AuditEvent.agent[4].type.coding[1].system = `http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction`<br/>
AuditEvent.agent[4].type.coding[2].code = `Commission`<br/>
AuditEvent.agent[4].type.coding[2].system = `https://cambio.codes/cs/AuditEventAgentTypesSE`<br/>
AuditEvent.agent[4].who.identifier.value = *Logical Ref -> PractitionerRole, using HSA-id for the user's commission. Matches http://sambi.se/attributes/1/commissionHsaId from the OIDC JWT.*<br/>
AuditEvent.agent[5].type.coding[1].code = `PROV` *(Healthcare provider)*<br/>
AuditEvent.agent[5].type.coding[1].system = `http://terminology.hl7.org/CodeSystem/v3-RoleClass`<br/>
AuditEvent.agent[5].type.coding[2].code = `CommissionPDLCareProvider`<br/>
AuditEvent.agent[5].type.coding[2].system = `https://cambio.codes/cs/AuditEventAgentTypesSE`<br/>
AuditEvent.agent[5].who.identifier.value = *Logical Ref -> Organization, using HSA-id for the care provider to which the user's commission belongs. Matches http://sambi.se/attributes/1/healthCareProviderHsaId from the OIDC JWT.*<br/>
AuditEvent.source.observer.identifier.value = *Logical Ref → Device, using Application ID for the CDR/xCDR system_id*<br/>
AuditEvent.entity[1].type.code = `1` *(Person)*<br/>
AuditEvent.entity[1].type.system = `http://terminology.hl7.org/CodeSystem/audit-entity-type`<br/>
AuditEvent.entity[1].role = `1` *(Patient)*<br/>
AuditEvent.entity[1].role.system = `https://hl7.org/fhir/codesystem-object-role`<br/>
AuditEvent.entity[1].what.identifier.value = *Logical Ref -> Patient, using EHR ID and Patient business identifier for Patient X*<br/>
AuditEvent.entity[1].what.identifier.system = *uri for identifier namespace*<br/>
AuditEvent.entity[2].type = `2` *(System Object)*<br/>
AuditEvent.entity[2].type.system = `http://terminology.hl7.org/CodeSystem/audit-entity-type`<br/>
AuditEvent.entity[2].query = *URL used for request + HTTP Headers, base64 encoded*<br/>
AuditEvent.entity[2].detail.type = `HTTP method`<br/>
AuditEvent.entity[2].detail.value = `GET`<br/>
AuditEvent.entity[3].type.system = `https://profiles.ihe.net/ITI/BALP/CodeSystem/BasicAuditEntityType`<br/>
AuditEvent.entity[3].type.value = `XrequestId`<br/>
AuditEvent.entity[3].what.identifier.value = *X-Request-Id*<br/>
AuditEvent.entity[4].type.system = `https://cambio.codes/cs/audit-event-entity-types`<br/>
<br/>
**Metadata section related to the request and result**<br/>
AuditEvent.entity[4].type.value = `result` <br/>
AuditEvent.entity[4].detail[1].type = `responseSize`<br/>
AuditEvent.entity[4].detail[1].valueString = *Size of response in bytes*<br/>
AuditEvent.entity[4].detail[2].type = `responseCode`<br/>
AuditEvent.entity[4].detail[2].valueString = *HTTP response code*<br/>
AuditEvent.entity[4].detail[3].type = `responseHash`<br/>
AuditEvent.entity[4].detail[3].valueString = *Response hash*<br/>
AuditEvent.entity[4].detail[4].type = `responseHashAlgorithm` <br/>
AuditEvent.entity[4].detail[4].valueString = *Response hash algorithm*<br/>