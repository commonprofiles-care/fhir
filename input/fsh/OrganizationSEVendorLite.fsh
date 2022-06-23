Profile: OrganizationSEVendorLite
Parent: Organization
Description: """This is a light weight Swedish Organization profile.
              It can be used when Organizations have been referenced by other resources, such as Observation, ServiceRequest or Appointment.
              It can also be used for presenting a list of organizations with associated information."""

* ^purpose = """To define a small lightweight Organization resource for the primary use case of being included as referenced/contained from other resources. This will allow applications to display the most fundamental organization information like name and business identifier together with other resources like a ServiceRequest or an Observation. When fetching such resources, the referenced Organization resource can be included using this profile.
              The profile can be used for healthcare organizations, often identified using hsa id, but also non-healthcare organizations, often identified using organization id."""

* endpoint ..0
* contact ..0
* telecom.period ..0
* address.period ..0

* name 1.. MS

* extension contains HsaHierarchy named hsaHierarchy 0..* MS

* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Unordered, Open, by system(Value)"
* identifier contains
            hsaid ..1 MS
        and organizationIdentifier ..1 MS

* identifier[hsaid] MS
* identifier[hsaid] ^short = "This slice should be used if the organization has a HSA id. HSA id is an official identifier for healthcare organizations and practitioners in Sweden."
* identifier[hsaid].type = #PRN
* identifier[hsaid].type MS
* identifier[hsaid].system MS
* identifier[hsaid].system = HSA_ORG_ID
* identifier[hsaid].system ^short = "URI for objects (e.g. organizations or practitioners) in the HSA catalog."
* identifier[hsaid].value MS
* identifier[hsaid].value ^short = "HSA id."

* identifier[organizationIdentifier] MS
* identifier[organizationIdentifier] ^short = "Organization id"
* identifier[organizationIdentifier] ^definition = "This slice should be used if the organization has an Swedish organization id. Organization id is an official identifier for companies and associations in Sweden. https://bolagsverket.se/ff/foretagsformer/organisationsnummer-1.7902"
* identifier[organizationIdentifier].type = #XX
* identifier[organizationIdentifier].type MS
* identifier[organizationIdentifier].system MS
* identifier[organizationIdentifier].system = SE_ORG_ID
* identifier[organizationIdentifier].system ^short = "URI for Swedish organization number."
* identifier[organizationIdentifier].value MS
* identifier[organizationIdentifier].value ^short = "Swedish organization id."

* type MS
* type ^slicing.discriminator.type = #pattern
* type ^slicing.discriminator.path = "code"
* type ^slicing.rules = #open
* type ^slicing.description = "Unordered, Open, by system(Value)"
* type contains
            careUnit ..1 MS
        and careProvider ..1 MS

* type[careUnit] MS
* type[careUnit] ^definition = "This slice should be used to communicate that this Organization is a care unit, according to Swedish HSA definition."
* type[careUnit].coding 1..1 MS
* type[careUnit].coding.system = SCT
* type[careUnit].coding.system 1.. MS
* type[careUnit].coding.version ^definition = "Swedish version of Snomed CT."
* type[careUnit].coding.version 1.. MS
* type[careUnit].coding.version = "http://snomed.info/sct/45991000052106"
* type[careUnit].coding.code = #43741000
* type[careUnit].coding.code 1.. MS
* type[careUnit].coding.code ^definition = "Snomed CT concept 43741000| vårdenhet|"

* type[careProvider] MS
* type[careProvider] ^definition = "This slice should be used to communicate that this Organization is a care provider, according to Swedish HSA definition."
* type[careProvider].coding 1..1 MS
* type[careProvider].coding.system 1.. MS
* type[careProvider].coding.system = SCT
* type[careProvider].coding.version ^definition = "Swedish version of Snomed CT."
* type[careProvider].coding.version 1.. MS
* type[careProvider].coding.version = "http://snomed.info/sct/45991000052106"
* type[careProvider].coding.code = #143591000052106
* type[careProvider].coding.code 1.. MS
* type[careProvider].coding.code ^comment = "The Snomed CT concept 143591000052106 | vårdgivare| is expected to be included in the Swedish Snomed CT release planned for 2022-05-31."

* telecom MS
* telecom.system 1.. MS
* telecom.value 1.. MS

* address MS
* address.line.extension contains
            iso21090-ADXP-careOf named careOf 0..* MS
        and iso21090-ADXP-streetAddressLine named streetAddressLine 0..* MS