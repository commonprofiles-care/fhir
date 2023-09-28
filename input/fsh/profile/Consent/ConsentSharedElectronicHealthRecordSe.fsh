Profile: ConsentSharedElectronicHealthRecordSe
Parent: Consent
Id: ConsentSharedElectronicHealthRecordSe
Description: "Profile to represent a consent given to a clinician or a care unit to access a patient's electronic health record ."
* ^purpose = "To enable creating consents, evaluation and exchange of already stored consents"
* ^url = "https://fhir.cambio.se/StructureDefinition/ConsentSharedElectronicHealthRecordSe"
* ^version = "1.1.2"
* ^status = #active
* identifier ..1
* scope.coding 1..1
* scope.coding.code 1..
* scope.coding.system 1..
* scope.coding.code = #patient-privacy
* category 2..
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.description = "Slice for category with the purpose of having two different codes for categories, one from the specified value set in the resource Consent and one from SnomedCT."
* category ^slicing.rules = #open
* category contains
    generalConsent 1..1 and
    pdlConsent 1..1
* category[generalConsent].coding 1..1
* category[generalConsent].coding.code 1..
* category[generalConsent].coding.system 1..
* category[generalConsent].coding = $LOINC#59284-0
* category[pdlConsent].coding 1..1
* category[pdlConsent].coding.code 1..
* category[pdlConsent].coding.system 1..
* category[pdlConsent].coding.version 1..
* category[pdlConsent].coding = $SnomedCT#70831000052108
* category[pdlConsent].coding.version = "http://snomed.info/sct/45991000052106/version/20220531"
* patient 1..
* patient only Reference(Patient)
* dateTime 1..
* policy 1..1
* policy.uri 1..
* performer ..0
* organization ..0
* source[x] ..0
* policyRule ..0
* verification ..0
* provision 1..
* provision obeys grantor-pid-occurence-invariant
* provision.type 1..
* provision.type = #permit
* provision.period 1..
* provision.period.start 1..
* provision.actor 1..3
* provision.actor ^slicing.discriminator[0].type = #pattern
* provision.actor ^slicing.discriminator[=].path = "role.coding"
* provision.actor ^slicing.discriminator[+].type = #value
* provision.actor ^slicing.discriminator[=].path = "reference.identifier.system"
* provision.actor ^slicing.description = "Slices for different actors involved in assigning a consent."
* provision.actor ^slicing.rules = #closed
* provision.actor contains
    grantorPersonnummer ..1 and
    grantorSamordningsnummer ..1 and
    grantee 1..1 and
    primaryauthor 0..1 MS
* provision.actor[grantorPersonnummer].role.coding 1..1
* provision.actor[grantorPersonnummer].role.coding.code 1..
* provision.actor[grantorPersonnummer].role.coding.system 1..
* provision.actor[grantorPersonnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR
* provision.actor[grantorPersonnummer].reference only Reference(Patient or RelatedPerson)
* provision.actor[grantorPersonnummer].reference.identifier 1..
* provision.actor[grantorPersonnummer].reference.identifier.system 1..
* provision.actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer"
* provision.actor[grantorPersonnummer].reference.identifier.value 1..
* provision.actor[grantorSamordningsnummer].role.coding 1..1
* provision.actor[grantorSamordningsnummer].role.coding.code 1..
* provision.actor[grantorSamordningsnummer].role.coding.system 1..
* provision.actor[grantorSamordningsnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR
* provision.actor[grantorSamordningsnummer].reference only Reference(Patient or RelatedPerson)
* provision.actor[grantorSamordningsnummer].reference.identifier 1..
* provision.actor[grantorSamordningsnummer].reference.identifier.system 1..
* provision.actor[grantorSamordningsnummer].reference.identifier.system = "http://electronichealth.se/identifier/samordningsnummer"
* provision.actor[grantorSamordningsnummer].reference.identifier.value 1..
* provision.actor[grantee].role.coding 1..1
* provision.actor[grantee].role.coding.code 1..
* provision.actor[grantee].role.coding.system 1..
* provision.actor[grantee].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTEE
* provision.actor[grantee].reference only Reference(Organization or PractitionerRole)
* provision.actor[grantee].reference.identifier 1..
* provision.actor[grantee].reference.identifier.system 1..
* provision.actor[grantee].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[grantee].reference.identifier.value 1..
* provision.actor[primaryauthor].role.coding 1..1
* provision.actor[primaryauthor].role.coding.code 1..
* provision.actor[primaryauthor].role.coding.system 1..
* provision.actor[primaryauthor].role.coding = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PRIMAUTH
* provision.actor[primaryauthor].reference only Reference(PractitionerRole)
* provision.actor[primaryauthor].reference.identifier 1..
* provision.actor[primaryauthor].reference.identifier.system 1..
* provision.actor[primaryauthor].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[primaryauthor].reference.identifier.value 1..