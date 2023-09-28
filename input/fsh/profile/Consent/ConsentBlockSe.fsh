Profile: ConsentBlockSE
Parent: Consent 
Id: ConsentBlockSE
Description: "Profile to represent a patient block to accessing their personal health information among care units and care providers in Sweden."
* ^purpose = "Record and maintain patient blocks preventing access to personal health information in accordance with Swedish data law"
* ^url = "https://fhir.cambio.se/StructureDefinition/ConsentBlockSE"
* ^version = "2.0.2"
* ^status = #active
* identifier ..1
* scope.coding 1..1
* scope.coding.code 1..
* scope.coding = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy 
* scope.coding.system 1..
* category ..2
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.description = "Slicing of category with the purpose of distinguishing what type of block it is."
* category ^slicing.rules = #closed
* category contains
    generalConsent 1..1 and
    innerBlock 0..1 and
    outerBlock 0..1
* category[generalConsent].coding 1..1
* category[generalConsent].coding.code 1..
* category[generalConsent].coding.system 1..
* category[generalConsent].coding = $LOINC#59284-0
* category[innerBlock].coding 1..1
* category[innerBlock].coding.code 1..
* category[innerBlock].coding.system 1..
* category[innerBlock].coding = $SnomedCT#416409005
* category[innerBlock].coding.version 1..
* category[innerBlock].coding.version = "http://snomed.info/sct/45991000052106" 
* category[outerBlock].coding 1..1
* category[outerBlock].coding.code 1..
* category[outerBlock].coding.system 1..
* category[outerBlock].coding = $SnomedCT#416308001
* category[outerBlock].coding.version 1..
* category[outerBlock].coding.version = "http://snomed.info/sct/45991000052106" 
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
* provision.type = http://hl7.org/fhir/consent-provision-type#deny 
* provision.actor 1..2
* provision.actor ^slicing.discriminator[0].type = #pattern
* provision.actor ^slicing.discriminator[=].path = "role.coding"
* provision.actor ^slicing.discriminator[+].type = #value
* provision.actor ^slicing.discriminator[=].path = "reference.identifier.system"
* provision.actor ^slicing.description = "Slices for different actors involved in assigning the block."
* provision.actor ^slicing.rules = #closed
* provision.actor contains
    grantorPersonnummer ..1 and           
    grantorSamordningsnummer ..1 and
    primaryauthor ..1 MS
* provision.actor[grantorPersonnummer].role.coding 1..1
* provision.actor[grantorPersonnummer].role.coding.code 1..
* provision.actor[grantorPersonnummer].role.coding.system 1..
* provision.actor[grantorPersonnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR 
* provision.actor[grantorPersonnummer].reference only Reference(RelatedPerson or Patient)
* provision.actor[grantorPersonnummer].reference.identifier 1..
* provision.actor[grantorPersonnummer].reference.identifier.system 1..
* provision.actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer" 
* provision.actor[grantorPersonnummer].reference.identifier.value 1..
* provision.actor[grantorSamordningsnummer].role.coding 1..1
* provision.actor[grantorSamordningsnummer].role.coding.code 1..
* provision.actor[grantorSamordningsnummer].role.coding.system 1..
* provision.actor[grantorSamordningsnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR 
* provision.actor[grantorSamordningsnummer].reference only Reference(RelatedPerson or Patient)
* provision.actor[grantorSamordningsnummer].reference.identifier 1..
* provision.actor[grantorSamordningsnummer].reference.identifier.system 1..
* provision.actor[grantorSamordningsnummer].reference.identifier.system = "http://electronichealth.se/identifier/samordningsnummer" 
* provision.actor[grantorSamordningsnummer].reference.identifier.value 1..
* provision.actor[primaryauthor].role.coding 1..1
* provision.actor[primaryauthor].role.coding.code 1..
* provision.actor[primaryauthor].role.coding.system 1..
* provision.actor[primaryauthor].role.coding = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PRIMAUTH 
* provision.actor[primaryauthor].reference only Reference(PractitionerRole)
* provision.actor[primaryauthor].reference.identifier 1..
* provision.actor[primaryauthor].reference.identifier.system 1..
* provision.actor[primaryauthor].reference.identifier.system = "urn:oid:1.2.752.29.4.19" 
* provision.actor[primaryauthor].reference.identifier.value 1..

* provision.action = http://terminology.hl7.org/CodeSystem/consentaction#access 
* provision.securityLabel ..0
* provision.purpose 2..2
* provision.purpose ^slicing.discriminator.type = #pattern
* provision.purpose ^slicing.discriminator.path = "$this"
* provision.purpose ^slicing.description = "Slicing of purpose with the purpose of having two different codes for it, one from the value set specified in the resource and another one from a local code system."
* provision.purpose ^slicing.rules = #closed
* provision.purpose contains
    blockAll 1..1 and
    patientRequest 1..1
* provision.purpose[blockAll].system ..1
* provision.purpose[blockAll].code ..1
* provision.purpose[blockAll] = $ConsentPurposeTypeCS#BlockAll 
* provision.purpose[patientRequest].system ..1
* provision.purpose[patientRequest].code ..1
* provision.purpose[patientRequest] = http://terminology.hl7.org/CodeSystem/v3-ActReason#PATRQT 

* provision.class ..0
* provision.code ..0
* provision.dataPeriod ..0
* provision.data ..0
* provision.provision 1..
* provision.provision obeys grantor-pid-occurence-invariant
* provision.provision ^slicing.discriminator.type = #pattern
* provision.provision ^slicing.discriminator.path = "purpose"
* provision.provision ^slicing.description = "Slicing of different provisions with the purpose of distinguishing different types of exceptions that apply to the block."
* provision.provision ^slicing.rules = #closed
* provision.provision contains
    permitOrganization 1..1 and
    permitData 0..*
* provision.provision[permitOrganization].type 1..
* provision.provision[permitOrganization].type = http://hl7.org/fhir/consent-provision-type#permit 
* provision.provision[permitOrganization].period 1..
* provision.provision[permitOrganization].period.start 1..
* provision.provision[permitOrganization].purpose 2..2
* provision.provision[permitOrganization].purpose ^slicing.discriminator.type = #pattern
* provision.provision[permitOrganization].purpose ^slicing.discriminator.path = "$this"
* provision.provision[permitOrganization].purpose ^slicing.description = "Slicing of purpose with the purpose of having two different codes for it, one from the value set specified in the resource and another one from a local code system."
* provision.provision[permitOrganization].purpose ^slicing.rules = #closed
* provision.provision[permitOrganization].purpose contains
    defaultAccess 1..1 and
    patientRequest 1..1
* provision.provision[permitOrganization].purpose[defaultAccess].system 1..
* provision.provision[permitOrganization].purpose[defaultAccess].code 1..
* provision.provision[permitOrganization].purpose[defaultAccess] = $ConsentPurposeTypeCS#DefaultAccess 
* provision.provision[permitOrganization].purpose[patientRequest].system 1..
* provision.provision[permitOrganization].purpose[patientRequest].code 1..
* provision.provision[permitOrganization].purpose[patientRequest] = http://terminology.hl7.org/CodeSystem/v3-ActReason#PATRQT 

* provision.provision[permitOrganization].actor 1..3
* provision.provision[permitOrganization].actor ^slicing.discriminator[0].type = #pattern
* provision.provision[permitOrganization].actor ^slicing.discriminator[=].path = "role.coding"
* provision.provision[permitOrganization].actor ^slicing.discriminator[+].type = #value
* provision.provision[permitOrganization].actor ^slicing.discriminator[=].path = "reference.identifier.system"
* provision.provision[permitOrganization].actor ^slicing.description = "Slices for different actors involved in assigning block exceptions for an organization."
* provision.provision[permitOrganization].actor ^slicing.rules = #closed
* provision.provision[permitOrganization].actor contains
    grantorPersonnummer ..1 and
    grantorSamordningsnummer ..1 and
    grantee 1..1 and
    primaryauthor ..1
* provision.provision[permitOrganization].actor[grantorPersonnummer].role.coding 1..
* provision.provision[permitOrganization].actor[grantorPersonnummer].role.coding.code 1..
* provision.provision[permitOrganization].actor[grantorPersonnummer].role.coding.system 1..
* provision.provision[permitOrganization].actor[grantorPersonnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR 
* provision.provision[permitOrganization].actor[grantorPersonnummer].reference only Reference(RelatedPerson or Patient)
* provision.provision[permitOrganization].actor[grantorPersonnummer].reference.identifier 1..
* provision.provision[permitOrganization].actor[grantorPersonnummer].reference.identifier.system 1..
* provision.provision[permitOrganization].actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer" 
* provision.provision[permitOrganization].actor[grantorPersonnummer].reference.identifier.value 1..
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].role.coding 1..
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].role.coding.code 1..
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].role.coding.system 1..
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR 
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].reference only Reference(RelatedPerson or Patient)
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].reference.identifier 1..
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].reference.identifier.system 1..
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].reference.identifier.system = "http://electronichealth.se/identifier/samordningsnummer" 
* provision.provision[permitOrganization].actor[grantorSamordningsnummer].reference.identifier.value 1..
* provision.provision[permitOrganization].actor[grantee].role.coding 1..
* provision.provision[permitOrganization].actor[grantee].role.coding.code 1..
* provision.provision[permitOrganization].actor[grantee].role.coding.system 1..
* provision.provision[permitOrganization].actor[grantee].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTEE 
* provision.provision[permitOrganization].actor[grantee].reference only Reference(Organization)
* provision.provision[permitOrganization].actor[grantee].reference.identifier 1..
* provision.provision[permitOrganization].actor[grantee].reference.identifier.system 1..
* provision.provision[permitOrganization].actor[grantee].reference.identifier.system = "urn:oid:1.2.752.29.4.19" 
* provision.provision[permitOrganization].actor[grantee].reference.identifier.value 1..
* provision.provision[permitOrganization].actor[primaryauthor].role.coding 1..
* provision.provision[permitOrganization].actor[primaryauthor].role.coding.code 1..
* provision.provision[permitOrganization].actor[primaryauthor].role.coding.system 1..
* provision.provision[permitOrganization].actor[primaryauthor].role.coding = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PRIMAUTH 
* provision.provision[permitOrganization].actor[primaryauthor].reference only Reference(PractitionerRole)
* provision.provision[permitOrganization].actor[primaryauthor].reference.identifier 1..
* provision.provision[permitOrganization].actor[primaryauthor].reference.identifier.system 1..
* provision.provision[permitOrganization].actor[primaryauthor].reference.identifier.system = "urn:oid:1.2.752.29.4.19" 
* provision.provision[permitOrganization].actor[primaryauthor].reference.identifier.value 1..

* provision.provision[permitOrganization].action ..0
* provision.provision[permitOrganization].securityLabel ..0
* provision.provision[permitOrganization].class ..0
* provision.provision[permitOrganization].code ..0
* provision.provision[permitOrganization].dataPeriod ..0
* provision.provision[permitOrganization].data ..0
* provision.provision[permitOrganization].provision ..0

* provision.provision[permitData].type 1..
* provision.provision[permitData].type = http://hl7.org/fhir/consent-provision-type#permit 
* provision.provision[permitData].period 1..
* provision.provision[permitData].period.start 1..
* provision.provision[permitData].purpose 2..2
* provision.provision[permitData].purpose ^slicing.discriminator.type = #pattern
* provision.provision[permitData].purpose ^slicing.discriminator.path = "$this"
* provision.provision[permitData].purpose ^slicing.description = "Slicing of purpose with the purpose of having two different codes for the purpose, one from the value set specified in the resource and another one from a local code system."
* provision.provision[permitData].purpose ^slicing.rules = #closed
* provision.provision[permitData].purpose contains
    dataExceptions 1..1 and
    patientRequest 1..1
* provision.provision[permitData].purpose[dataExceptions].system 1..
* provision.provision[permitData].purpose[dataExceptions].code 1..
* provision.provision[permitData].purpose[dataExceptions] = $ConsentPurposeTypeCS#DataExceptions 
* provision.provision[permitData].purpose[patientRequest].system 1..
* provision.provision[permitData].purpose[patientRequest].code 1..
* provision.provision[permitData].purpose[patientRequest] = http://terminology.hl7.org/CodeSystem/v3-ActReason#PATRQT 
* provision.provision[permitData].actor 1..2
* provision.provision[permitData].actor ^slicing.discriminator[0].type = #pattern
* provision.provision[permitData].actor ^slicing.discriminator[=].path = "role.coding"
* provision.provision[permitData].actor ^slicing.discriminator[+].type = #value
* provision.provision[permitData].actor ^slicing.discriminator[=].path = "reference.identifier.system"
* provision.provision[permitData].actor ^slicing.description = "Slices for different actors involved in assigning block exceptions for information types."
* provision.provision[permitData].actor ^slicing.rules = #closed
* provision.provision[permitData].actor contains
    grantorPersonnummer ..1 and
    grantorSamordningsnummer ..1 and
    primaryauthor ..1
* provision.provision[permitData].actor[grantorPersonnummer].role.coding 1..
* provision.provision[permitData].actor[grantorPersonnummer].role.coding.code 1..
* provision.provision[permitData].actor[grantorPersonnummer].role.coding.system 1..
* provision.provision[permitData].actor[grantorPersonnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR 
* provision.provision[permitData].actor[grantorPersonnummer].reference only Reference(RelatedPerson or Patient)
* provision.provision[permitData].actor[grantorPersonnummer].reference.identifier 1..
* provision.provision[permitData].actor[grantorPersonnummer].reference.identifier.system 1..
* provision.provision[permitData].actor[grantorPersonnummer].reference.identifier.system = "http://electronichealth.se/identifier/personnummer" 
* provision.provision[permitData].actor[grantorPersonnummer].reference.identifier.value 1..
* provision.provision[permitData].actor[grantorSamordningsnummer].role.coding 1..
* provision.provision[permitData].actor[grantorSamordningsnummer].role.coding.code 1..
* provision.provision[permitData].actor[grantorSamordningsnummer].role.coding.system 1..
* provision.provision[permitData].actor[grantorSamordningsnummer].role.coding = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRANTOR 
* provision.provision[permitData].actor[grantorSamordningsnummer].reference only Reference(RelatedPerson or Patient)
* provision.provision[permitData].actor[grantorSamordningsnummer].reference.identifier 1..
* provision.provision[permitData].actor[grantorSamordningsnummer].reference.identifier.system 1..
* provision.provision[permitData].actor[grantorSamordningsnummer].reference.identifier.system = "http://electronichealth.se/identifier/samordningsnummer" 
* provision.provision[permitData].actor[grantorSamordningsnummer].reference.identifier.value 1..
* provision.provision[permitData].actor[primaryauthor].role.coding 1..
* provision.provision[permitData].actor[primaryauthor].role.coding.code 1..
* provision.provision[permitData].actor[primaryauthor].role.coding.system 1..
* provision.provision[permitData].actor[primaryauthor].role.coding = http://terminology.hl7.org/CodeSystem/contractsignertypecodes#PRIMAUTH 
* provision.provision[permitData].actor[primaryauthor].reference only Reference(PractitionerRole)
* provision.provision[permitData].actor[primaryauthor].reference.identifier 1..
* provision.provision[permitData].actor[primaryauthor].reference.identifier.system 1..
* provision.provision[permitData].actor[primaryauthor].reference.identifier.system = "urn:oid:1.2.752.29.4.19" 
* provision.provision[permitData].actor[primaryauthor].reference.identifier.value 1..

* provision.provision[permitData].action ..0
* provision.provision[permitData].securityLabel ..0
* provision.provision[permitData].class 1..
* provision.provision[permitData].class ^slicing.discriminator.type = #pattern
* provision.provision[permitData].class ^slicing.discriminator.path = "$this"
* provision.provision[permitData].class ^slicing.description = "Slices for different information types that the exception applies for."
* provision.provision[permitData].class ^slicing.rules = #closed
* provision.provision[permitData].class contains
    medication 0..1 and
    warning 0..1
* provision.provision[permitData].class[medication].system 1..
* provision.provision[permitData].class[medication].code 1..
* provision.provision[permitData].class[medication] = urn:riv:informationsecurity:authorization:blocking:4:informationtypeidvalue#lak
* provision.provision[permitData].class[warning].system 1..
* provision.provision[permitData].class[warning].code 1..
* provision.provision[permitData].class[warning] = urn:riv:informationsecurity:authorization:blocking:4:informationtypeidvalue#upp
* provision.provision[permitData].code ..0
* provision.provision[permitData].dataPeriod ..0 
* provision.provision[permitData].data ..0