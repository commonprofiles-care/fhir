Instance: CreateConsent
InstanceOf: ConsentSharedElectronicHealthRecordSe
Description: "Example of consent to access shared EHR given by a patient or a representative of the patient"
* meta.profile = "https://fhir.cambio.se/StructureDefinition/ConsentSharedElectronicHealthRecordSe|1.1.2"
* status = http://hl7.org/fhir/consent-state-codes#active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category[generalConsent].coding = $LOINC#59284-0
* category[pdlConsent].coding = $SnomedCT#70831000052108
* patient.identifier.system = "http://electronichealth.se/identifier/personnummer"
* patient.identifier.value = "191212121212"
* dateTime = "2018-12-28T00:00:00Z"
* policy.uri = "https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/lag-2022913-om-sammanhallen-vard--och_sfs-2022-913"
* provision.type = http://hl7.org/fhir/consent-provision-type#permit
* provision.actor[grantorPersonnummer].role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR
* provision.actor[grantorPersonnummer].reference.type = "Patient"
* provision.actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer"
* provision.actor[grantorPersonnummer].reference.identifier.value = "191212121212"
* provision.actor[grantee].role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTEE
* provision.actor[grantee].reference.type = "Organization"
* provision.actor[grantee].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[grantee].reference.identifier.value = "SE162321000016-efca"
* provision.period.start = "2022-02-01T00:00:00Z"