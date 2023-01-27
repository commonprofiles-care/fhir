Profile: ConsentSJF
Parent: Consent
Id: ConsentSJF
Description: "Profile to represent a consent to shared record keeping in between care providers in Sweden."

* ^purpose = "To enable creating consents, evaluation and exchange of already stored consents"

* ^url = "https://fhir.cambio.se/StructureDefinition/ConsentSJF/v1"
* ^version = "1.0.0"
* ^status = #active

* identifier ..1

* scope.coding 1..1
* scope.coding.system 1..
* scope.coding.system from ConsentScopeCodes (extensible)
* scope.coding.system ^binding.description = "Consent Scope Codes"
* scope.coding.code 1..
* scope.coding.code = #patient-privacy (exactly)

* category ..1
* category.coding 1..1
* category.coding.system 1..
* category.coding.system = SCT (exactly)
* category.coding.version = "http://snomed.info/sct/45991000052106/version/20220531" (exactly)
* category.coding.code 1..
* category.coding.code = #70831000052108 (exactly)

* patient 1..
* patient only Reference(https://commonprofiles.care/StructureDefinition/PatientSEVendorLite)

* dateTime 1..

* policy 1..1
* policy.uri 1..
* policy.uri = "https://www.riksdagen.se/sv/dokument-lagar/dokument/svensk-forfattningssamling/patientdatalag-2008355_sfs-2008-355" (exactly)

* provision 1..
* provision.type 1..
* provision.type = #permit (exactly)
* provision.period 1..
* provision.actor ^slicing.discriminator.type = #value
* provision.actor ^slicing.discriminator.path = "role.coding.code"
* provision.actor ^slicing.description = "Slices for different actor roles"
* provision.actor ^slicing.ordered = false
* provision.actor ^slicing.rules = #closed
* provision.actor contains
    grantor 1..1 MS and
    grantee 1..1 MS and
    primaryauthor 0..1 MS

* provision.actor[grantor].role.coding.system = ROLE_CODE_SYSTEM (exactly)
* provision.actor[grantor].role.coding.code 1..
* provision.actor[grantor].role.coding.code = #GRANTOR (exactly)
* provision.actor[grantor].reference only Reference(Patient or RelatedPerson)
* provision.actor[grantor].reference.identifier 1..
* provision.actor[grantor].reference.identifier.system 1..
* provision.actor[grantor].reference.identifier.value 1..

* provision.actor[grantee].role.coding.system = ROLE_CODE_SYSTEM (exactly)
* provision.actor[grantee].role.coding.code 1..
* provision.actor[grantee].role.coding.code = #GRANTEE (exactly)
* provision.actor[grantee].reference only Reference(https://commonprofiles.care/StructureDefinition/OrganizationSEVendorLite/v1 or PractitionerRole)
* provision.actor[grantee].reference.identifier 1..
* provision.actor[grantee].reference.identifier.system 1..
* provision.actor[grantee].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[grantee].reference.identifier.value 1..

* provision.actor[primaryauthor].role.coding.system = "http://terminology.hl7.org/CodeSystem/contractsignertypecodes" (exactly)
* provision.actor[primaryauthor].role.coding.code 1..
* provision.actor[primaryauthor].role.coding.code = #PRIMARYAUTHOR (exactly)
* provision.actor[primaryauthor].reference only Reference(PractitionerRole)
* provision.actor[primaryauthor].reference.identifier 1..
* provision.actor[primaryauthor].reference.identifier.system 1..
* provision.actor[primaryauthor].reference.identifier.system = "urn:oid:1.2.752.29.4.19"
* provision.actor[primaryauthor].reference.identifier.value 1..