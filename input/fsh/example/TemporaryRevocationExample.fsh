Instance: TemporaryRevocationExample
InstanceOf: ConsentTemporaryRevocationSE
Description: "Example instance of a temporary revocation."
* meta.profile = "https://fhir.cambio.se/StructureDefinition/ConsentTemporaryRevocationSE|1.0.2"
* status = http://hl7.org/fhir/consent-state-codes#active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category = http://loinc.org#59284-0
* patient.identifier.system = "http://electronichealth.se/identifier/personnummer"
* patient.identifier.value = "191212121212"
* dateTime = "2022-02-07T13:28:17.239+02:00"
* policy.uri = "https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/lag-2022913-om-sammanhallen-vard--och_sfs-2022-913"
* provision.type = http://hl7.org/fhir/consent-provision-type#permit
* provision.period.start = "2023-01-01T00:00:00.000Z"
* provision.period.end = "2023-01-02T00:00:00.000Z"
* provision.actor[grantorPersonnummer].role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR
* provision.actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer"
* provision.actor[grantorPersonnummer].reference.identifier.value = "191212121212"
* provision.actor[grantee].role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTEE
* provision.actor[grantee].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[grantee].reference.identifier.value = "SE162321000016-efba"
* provision.purpose = $ConsentPurposeTypeCS#TemporaryAccess
* provision.data.meaning = http://hl7.org/fhir/consent-data-meaning#instance
* provision.data.reference = Reference(InnerBlockExample)