Instance: OuterBlockExample
InstanceOf: ConsentBlockSE
Description: "Example Instance for Outer block"
* meta.profile = "https://fhir.cambio.se/StructureDefinition/ConsentBlockSE|2.0.2"
* policy.uri = "https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/lag-2022913-om-sammanhallen-vard--och_sfs-2022-913"
* status = http://hl7.org/fhir/consent-state-codes#active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category[generalConsent].coding = http://loinc.org#59284-0
* category[outerBlock].coding = $SnomedCT#416308001
* patient.identifier.system = "http://electronichealth.se/identifier/personnummer"
* patient.identifier.value = "191212121212"
* dateTime = "2022-02-27T10:15:10.145+02:00"
* provision.type = http://hl7.org/fhir/consent-provision-type#deny
* provision.actor[grantorPersonnummer].role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR
* provision.actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer"
* provision.actor[grantorPersonnummer].reference.identifier.value = "191212121212"
* provision.actor[primaryauthor].role = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PRIMAUTH
* provision.actor[primaryauthor].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[primaryauthor].reference.identifier.value = "SE162321000016-4kx7"
* provision.action = http://terminology.hl7.org/CodeSystem/consentaction#access
* provision.purpose[blockAll] = $ConsentPurposeTypeCS#BlockAll
* provision.purpose[patientRequest] = http://terminology.hl7.org/CodeSystem/v3-ActReason#PATRQT
* provision.provision[permitOrganization].period.start = "2022-02-07T13:28:17.239+02:00"
* provision.provision[permitOrganization].type = #permit
* provision.provision[permitOrganization].purpose[defaultAccess] = $ConsentPurposeTypeCS#DefaultAccess
* provision.provision[permitOrganization].purpose[patientRequest] = http://terminology.hl7.org/CodeSystem/v3-ActReason#PATRQT
* provision.provision[permitOrganization].actor[grantorPersonnummer].role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR
* provision.provision[permitOrganization].actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer"
* provision.provision[permitOrganization].actor[grantorPersonnummer].reference.identifier.value = "191212121212"
* provision.provision[permitOrganization].actor[grantee].role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTEE
* provision.provision[permitOrganization].actor[grantee].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.provision[permitOrganization].actor[grantee].reference.identifier.value = "SE162321000016-efca"