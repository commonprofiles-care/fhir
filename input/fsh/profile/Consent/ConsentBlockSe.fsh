Profile: ConsentBlockSE
Parent: Consent
Id: ConsentBlockSE
Description: "Profile to represent a patient block to accessing their personal health information among care units and care providers in Sweden."
* ^version = "2.0.2"
* ^status = #active
* ^purpose = "Record and maintain patient blocks preventing access to personal health information in accordance with Swedish data law"
* identifier ..1
* scope.coding 1..1
* scope.coding = $consentscope#patient-privacy
  * system 1..
  * code 1..
* category ..2
  * ^slicing.discriminator[0].type = #pattern
  * ^slicing.discriminator[=].path = "coding"
  * ^slicing.description = "Slicing of category with the purpose of distinguishing what type of block it is."
  * ^slicing.rules = #closed
* category contains
    generalConsent 1..1 and
    innerBlock 0..1 and
    outerBlock 0..1
* category[generalConsent].coding 1..1
  * system 1..
  * code 1..
* category[innerBlock].coding 1..1
  * system 1..
  * version 1..
  * version = "http://snomed.info/sct/45991000052106"
  * code 1..
* category[outerBlock].coding 1..1
  * system 1..
  * version 1..
  * version = "http://snomed.info/sct/45991000052106"
  * code 1..
* patient 1..
* patient only Reference(Patient)
  * ^type.aggregation = #referenced
* dateTime 1..
* performer ..0
* organization ..0
* source[x] ..0
* policy 1..
  * uri 1..
* policyRule ..0
* verification ..0
* provision 1..
  * type 1..
  * type = #deny
  * actor 1..2
    * ^slicing.discriminator[0].type = #pattern
    * ^slicing.discriminator[=].path = "role.coding"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "reference.identifier.system"
    * ^slicing.description = "Slices for different actors involved in assigning the block."
    * ^slicing.rules = #closed
  * actor contains
      grantorPersonnummer 0..1 and
      grantorSamordningsnummer 0..1 and
      primaryauthor 0..1 MS
  * actor[grantorPersonnummer]
    * role.coding 1..1
    * role.coding = $v3-RoleCode#GRANTOR
      * system 1..
      * code 1..
    * reference only Reference(RelatedPerson or Patient)
      * identifier 1..
        * system 1..
        * system = "http://electronichealth.se/identifier/personnummer"
        * value 1..
  * actor[grantorSamordningsnummer]
    * role.coding 1..1
    * role.coding = $v3-RoleCode#GRANTOR
      * system 1..
      * code 1..
    * reference only Reference(RelatedPerson or Patient)
      * identifier 1..
        * system 1..
        * system = "http://electronichealth.se/identifier/samordningsnummer"
        * value 1..
  * actor[primaryauthor]
    * role.coding 1..1
    * role.coding = $contractsignertypecodes#PRIMAUTH
      * system 1..
      * code 1..
    * reference only Reference(PractitionerRole)
      * identifier 1..
        * system 1..
        * system = "urn:oid:1.2.752.29.4.19"
        * value 1..
  * action = $consentaction#access
  * securityLabel ..0
  * purpose ..2
    * ^slicing.discriminator[0].type = #pattern
    * ^slicing.discriminator[=].path = "$this"
    * ^slicing.description = "Slicing of purpose with the purpose of having two different codes for it, one from the value set specified in the resource and another one from a local code system."
    * ^slicing.rules = #closed
  * purpose contains
      blockAll 1..1 and
      patientRequest 1..1
  * purpose[patientRequest] = $v3-ActReason#PATRQT
  * class ..0
  * code ..0
  * dataPeriod ..0
  * data ..0
  * provision ^slicing.discriminator[0].type = #pattern
    * ^slicing.discriminator[=].path = "purpose"
    * ^slicing.description = "Slicing of different provisions with the purpose of distinguishing different types of exceptions that apply to the block."
    * ^slicing.rules = #closed
  * provision contains
      permitOrganization 1..1 and
      permitData 0..*
  * provision[permitOrganization]
    * type 1..
    * type = #permit
    * period 1..
      * start 1..
    * actor ..3
      * ^slicing.discriminator[0].type = #pattern
      * ^slicing.discriminator[=].path = "role.coding"
      * ^slicing.discriminator[+].type = #value
      * ^slicing.discriminator[=].path = "reference.identifier.system"
      * ^slicing.description = "Slices for different actors involved in assigning block exceptions for an organization."
      * ^slicing.rules = #closed
    * actor contains
        grantorPersonnummer 0..1 and
        grantorSamordningsnummer 0..1 and
        grantee 1..1 and
        primaryauthor 0..1
    * actor[grantorPersonnummer]
      * role.coding 1..
      * role.coding = $v3-RoleCode#GRANTOR
        * system 1..
        * code 1..
      * reference only Reference(RelatedPerson or Patient)
        * identifier 1..
          * system 1..
          * system = "http://electronichealth.se/identifier/personnummer"
          * value 1..
    * actor[grantorSamordningsnummer]
      * role.coding 1..
      * role.coding = $v3-RoleCode#GRANTOR
        * system 1..
        * code 1..
      * reference only Reference(RelatedPerson or Patient)
        * identifier 1..
          * system 1..
          * system = "http://electronichealth.se/identifier/samordningsnummer"
          * value 1..
    * actor[grantee]
      * role.coding 1..
      * role.coding = $v3-RoleCode#GRANTEE
        * system 1..
        * code 1..
      * reference only Reference(Organization)
        * identifier 1..
          * system 1..
          * system = "urn:oid:1.2.752.29.4.19"
          * value 1..
    * actor[primaryauthor]
      * role.coding 1..
      * role.coding = $contractsignertypecodes#PRIMAUTH
        * system 1..
        * code 1..
      * reference only Reference(PractitionerRole)
        * identifier 1..
          * system 1..
          * system = "urn:oid:1.2.752.29.4.19"
          * value 1..
    * action ..0
    * securityLabel ..0
    * purpose 2..2
      * ^slicing.discriminator[0].type = #pattern
      * ^slicing.discriminator[=].path = "$this"
      * ^slicing.description = "Slicing of purpose with the purpose of having two different codes for it, one from the value set specified in the resource and another one from a local code system."
      * ^slicing.rules = #closed
    * purpose contains
        defaultAccess 1..1 and
        patientRequest 1..1
    * purpose[defaultAccess]
      * system 1..
      * code 1..
    * purpose[patientRequest] = $v3-ActReason#PATRQT
      * system 1..
      * code 1..
    * class ..0
    * code ..0
    * dataPeriod ..0
    * data ..0
    * provision ..0
  * provision[permitData]
    * type 1..
    * type = #permit
    * period 1..
      * start 1..
    * actor ..2
      * ^slicing.discriminator[0].type = #pattern
      * ^slicing.discriminator[=].path = "role.coding"
      * ^slicing.discriminator[+].type = #value
      * ^slicing.discriminator[=].path = "reference.identifier.system"
      * ^slicing.description = "Slices for different actors involved in assigning block exceptions for information types."
      * ^slicing.rules = #closed
    * actor contains
        grantorPersonnummer 0..1 and
        grantorSamordningsnummer 0..1 and
        primaryauthor 0..1
    * actor[grantorPersonnummer]
      * role.coding 1..
      * role.coding = $v3-RoleCode#GRANTOR
        * system 1..
        * code 1..
      * reference only Reference(RelatedPerson or Patient)
        * identifier 1..
          * system 1..
          * system = "http://electronichealth.se/identifier/personnummer"
          * value 1..
    * actor[grantorSamordningsnummer]
      * role.coding 1..
      * role.coding = $v3-RoleCode#GRANTOR
        * system 1..
        * code 1..
      * reference only Reference(RelatedPerson or Patient)
        * identifier 1..
          * system 1..
          * system = "http://electronichealth.se/identifier/samordningsnummer"
          * value 1..
    * actor[primaryauthor]
      * role.coding 1..
      * role.coding = $contractsignertypecodes#PRIMAUTH
        * system 1..
        * code 1..
      * reference only Reference(PractitionerRole)
        * identifier 1..
          * system 1..
          * system = "urn:oid:1.2.752.29.4.19"
          * value 1..
    * action ..0
    * securityLabel ..0
    * purpose 2..2
      * ^slicing.discriminator[0].type = #pattern
      * ^slicing.discriminator[=].path = "$this"
      * ^slicing.description = "Slicing of purpose with the purpose of having two different codes for the purpose, one from the value set specified in the resource and another one from a local code system."
      * ^slicing.rules = #closed
    * purpose contains
        dataExceptions 1..1 and
        patientRequest 1..1
    * purpose[dataExceptions]
      * system 1..
      * code 1..
    * purpose[patientRequest] = $v3-ActReason#PATRQT
      * system 1..
      * code 1..
    * class 1..
      * ^slicing.discriminator[0].type = #pattern
      * ^slicing.discriminator[=].path = "$this"
      * ^slicing.description = "Slices for different information types that the exception applies for."
      * ^slicing.rules = #closed
    * class contains
        medication 0..1 and
        warning 0..1
    * class[medication] = urn:riv:informationsecurity:authorization:blocking:4:informationtypeidvalue#lak
      * system 1..
      * code 1..
    * class[warning] = urn:riv:informationsecurity:authorization:blocking:4:informationtypeidvalue#upp
      * system 1..
      * code 1..
    * code ..0
    * dataPeriod ..0
    * data ..0