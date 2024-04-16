Profile: ConsentSharedElectronicHealthRecordSE
Parent: Consent
Id: ConsentSharedElectronicHealthRecordSE
Description: "Profile to represent a consent given to a clinician or a care unit to access a patient's electronic health record ."
* ^version = "1.1.2"
* ^status = #active
* ^purpose = "To enable creating consents, evaluation and exchange of already stored consents"
* identifier ..1
* scope.coding 1..1
  * system 1..
  * code 1..
  * code = #patient-privacy
* category ^slicing.discriminator[0].type = #pattern
  * ^slicing.discriminator[=].path = "coding"
  * ^slicing.description = "Slice for category with the purpose of having two different codes for categories, one from the specified value set in the resource Consent and one from SnomedCT."
  * ^slicing.rules = #open
* category contains
    generalConsent 1..1 and
    pdlConsent 1..1
* category[generalConsent].coding 1..1
  * system 1..
  * code 1..
* category[pdlConsent].coding 1..1
  * system 1..
  * version 1..
  * version = "http://snomed.info/sct/45991000052106/version/20220531"
  * code 1..
* patient 1..
* dateTime 1..
* performer ..0
* organization ..0
* source[x] ..0
* policy 1..1
  * uri 1..
* policyRule ..0
* verification ..0
* provision 1..
  * type 1..
  * type = #permit
  * period 1..
    * start 1..
  * actor ..3
    * ^slicing.discriminator[0].type = #pattern
    * ^slicing.discriminator[=].path = "role.coding"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "reference.identifier.system"
    * ^slicing.description = "Slices for different actors involved in assigning a consent."
    * ^slicing.rules = #closed
  * actor contains
      grantorPersonnummer 0..1 and
      grantorSamordningsnummer 0..1 and
      grantee 1..1 and
      primaryauthor 0..1 MS
  * actor[grantorPersonnummer]
    * role.coding 1..1
    * role.coding = $v3-RoleCode#GRANTOR
      * system 1..
      * code 1..
    * reference only Reference(Patient or RelatedPerson)
      * identifier 1..
        * system 1..
        * system = "http://electronichealth.se/identifier/personnummer"
        * value 1..
  * actor[grantorSamordningsnummer]
    * role.coding 1..1
    * role.coding = $v3-RoleCode#GRANTOR
      * system 1..
      * code 1..
    * reference only Reference(Patient or RelatedPerson)
      * identifier 1..
        * system 1..
        * system = "http://electronichealth.se/identifier/samordningsnummer"
        * value 1..
  * actor[grantee]
    * role.coding 1..1
    * role.coding = $v3-RoleCode#GRANTEE
      * system 1..
      * code 1..
    * reference only Reference(Organization or PractitionerRole)
      * identifier 1..
        * system 1..
        * system = "urn:oid:1.2.752.29.4.19"
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