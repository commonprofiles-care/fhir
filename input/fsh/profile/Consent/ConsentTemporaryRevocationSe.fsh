Profile: ConsentTemporaryRevocationSE
Parent: Consent
Id: ConsentTemporaryRevocationSE
Description: "Profile to represent a temporary revocation of an inner block set by a patient."
* ^purpose = "Record and maintain temporary revocations put on inner blocks allowing temporary access to personal health information in accordance with Swedish patient data act."
* ^url = "https://fhir.cambio.se/StructureDefinition/ConsentTemporaryRevocationSE"
* ^version = "1.0.2"
* ^status = #active
* scope.coding 1..1
* scope.coding.code 1..
* scope.coding.code = #patient-privacy
* scope.coding.system 1..
* category ..1
* category.coding 1..1
* category.coding.code 1..
* category.coding.system 1..
* category.coding = $LOINC#59284-0
* patient 1..
* patient ^type.aggregation = #referenced
* dateTime 1..
* performer ..0
* organization ..0
* source[x] ..0
* policy 1.. 
* policy.uri 1..
* policyRule ..0
* verification ..0
* provision 1..
* provision obeys grantor-pid-occurence-invariant
* provision.type 1..
* provision.type = #permit
* provision.period 1..
* provision.period.start 1..
* provision.period.end 1..
* provision.actor 1..3
* provision.actor ^slicing.discriminator[0].type = #pattern
* provision.actor ^slicing.discriminator[=].path = "role.coding"
* provision.actor ^slicing.discriminator[+].type = #value
* provision.actor ^slicing.discriminator[=].path = "reference.identifier.system"
* provision.actor ^slicing.description = "Slices for different actors involved in assigning a temporary revocation."
* provision.actor ^slicing.rules = #closed
* provision.actor contains
    grantorPersonnummer ..1 and
    grantorSamordningsnummer ..1 and
    grantee 1..1 and
    primaryauthor ..1 
* provision.actor[grantorPersonnummer].role.coding 1..
* provision.actor[grantorPersonnummer].role.coding.code 1..
* provision.actor[grantorPersonnummer].role.coding.system 1..
* provision.actor[grantorPersonnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR
* provision.actor[grantorPersonnummer].reference only Reference(RelatedPerson or Patient)
* provision.actor[grantorPersonnummer].reference.identifier 1..
* provision.actor[grantorPersonnummer].reference.identifier.system 1..
* provision.actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer"
* provision.actor[grantorPersonnummer].reference.identifier.value 1..
* provision.actor[grantorSamordningsnummer].role.coding 1..
* provision.actor[grantorSamordningsnummer].role.coding.code 1..
* provision.actor[grantorSamordningsnummer].role.coding.system 1..
* provision.actor[grantorSamordningsnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR
* provision.actor[grantorSamordningsnummer].reference only Reference(RelatedPerson or Patient)
* provision.actor[grantorSamordningsnummer].reference.identifier 1..
* provision.actor[grantorSamordningsnummer].reference.identifier.system 1..
* provision.actor[grantorSamordningsnummer].reference.identifier.system = "http://electronichealth.se/identifier/samordningsnummer"
* provision.actor[grantorSamordningsnummer].reference.identifier.value 1..
* provision.actor[grantee].role.coding 1..
* provision.actor[grantee].role.coding.code 1..
* provision.actor[grantee].role.coding.system 1..
* provision.actor[grantee].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTEE
* provision.actor[grantee].reference only Reference(Organization or PractitionerRole)
* provision.actor[grantee].reference.identifier 1..
* provision.actor[grantee].reference.identifier.system 1..
* provision.actor[grantee].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[grantee].reference.identifier.value 1..
* provision.actor[primaryauthor].role.coding 1..
* provision.actor[primaryauthor].role.coding.code 1..
* provision.actor[primaryauthor].role.coding.system 1..
* provision.actor[primaryauthor].role.coding = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PRIMAUTH
* provision.actor[primaryauthor].reference only Reference(PractitionerRole)
* provision.actor[primaryauthor].reference.identifier 1..
* provision.actor[primaryauthor].reference.identifier.system 1..
* provision.actor[primaryauthor].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[primaryauthor].reference.identifier.value 1..
* provision.action ..0
* provision.securityLabel ..0
* provision.purpose 1..1
* provision.purpose.code 1..
* provision.purpose.system 1..
* provision.purpose = $ConsentPurposeTypeCS#TemporaryAccess
* provision.class ..0
* provision.code ..0
* provision.dataPeriod ..0
* provision.data 1..
* provision.data.meaning = #instance
* provision.data.reference only Reference(Consent)
* provision.data.reference.reference 1..