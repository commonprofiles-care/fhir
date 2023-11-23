Profile: ConsentTemporaryRevocationSE
Parent: Consent
Id: ConsentTemporaryRevocationSE
Description: "Profile to represent a temporary revocation of an inner block set by a patient."
* ^version = "1.0.2"
* ^status = #active
* ^purpose = "Record and maintain temporary revocations put on inner blocks allowing temporary access to personal health information in accordance with Swedish patient data act."
* scope.coding 1..1
  * system 1..
  * code 1..
  * code = #patient-privacy
* category ..1
  * coding 1..1
    * system 1..
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
  * type = #permit
  * period 1..
    * start 1..
    * end 1..
  * actor ..3
    * ^slicing.discriminator[0].type = #pattern
    * ^slicing.discriminator[=].path = "role.coding"
    * ^slicing.discriminator[+].type = #value
    * ^slicing.discriminator[=].path = "reference.identifier.system"
    * ^slicing.description = "Slices for different actors involved in assigning a temporary revocation."
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
    * reference only Reference(Organization or PractitionerRole)
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
  * purpose 1..1
    * system 1..
    * code 1..
  * class ..0
  * code ..0
  * dataPeriod ..0
  * data 1..
    * meaning = #instance
    * reference only Reference(Consent)
      * reference 1..