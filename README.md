# fhir
* Build destination: https://build.fhir.org/ig/commonprofiles-care/fhir/
* Branches: https://build.fhir.org/ig/commonprofiles-care/fhir/branches/
* Published destination: https://commonprofiles.care

More info
* https://github.com/FHIR/auto-ig-builder/blob/master/README.md
* https://chat.fhir.org/#narrow/stream/179297-committers.2Fnotification/topic/ig-build/search/svenskaindustriprofiler.2Ffhir
* https://fhir.github.io/auto-ig-builder/builds.html

#### Naming conventions

Suggestion:
<Parent resource/profile>

    Parent resource - This is Patient, Organization, Observation, ServiceRequest etc
    Intended region - This is for which region the profile is intended to be used, options are SE (Sweden), Nord (Nordics), Eu (Europe), Int (international)
    Publisher - This is who has published the profile, in our case this would be Industry as opposed to maybe HL7 Sverige
    Profile type: Lite - Intended purpose is a very small resource that contains only the most important resource information. Use cases are e.g. when resources are referenced and included in other resources, or when the resource is used for simpler scenarios like populating a combo box/drop down list. Full - Intended purpose is a full resource model that contains all information related to the main resource. Use cases are to see and update the full resource.

Examples:

    OrganizationSEIndustryLite
    PatientSEIndustryLite
    PractitionerSEIndustryLite


Parent resource - This is Patient, Organization, Observation, ServiceRequest etc
Intended region - This is for which region the profile is intended to be used, options are SE (Sweden), Nord (Nordics), Eu (Europe), Int (international)
Publisher - This is who has published the profile, in our case this would be Vendor as opposed to maybe HL7 Sverige. For the industry collaboration we will go with Vendor
Profile type: Lite - Intended purpose is a very small resource that contains only the most important resource information. Use cases are e.g. when resources are referenced and included in other resources, or when the resource is used for simpler scenarios like populating a combo box/drop down list. Full - Intended purpose is a full resource model that contains all information related to the main resource. Use cases are to see and update the full resource.

The name will be in UpperCamelCase

OrganizationSEVendorLite
PatientSEVendorLite
PractitionerSEVendorLite


#### Canonical URL:s
Reopening just to clarify what the resulting canonical URL:s for our FHIR artifacts will look now that we have set the domain.

Suggestion:
https:// commonprofiles.care/< resource type >/<profile/extension/value set name>

Examples:
https://commonprofiles.care/StructureDefinition/OrganizationSEVendorLite
https://commonprofiles.care/ValueSet/PerfectNameOfAPerfectValueSet
https://commonprofiles.care/StructureDefinition/common-hsaHierarchy

Including the resource type follows the same pattern which is used both for the Swedish base profiles and also for the FHIR base resources and profiles. Examples:
http://build.fhir.org/ig/HL7Sweden/basprofiler-r4/StructureDefinition-SEBaseOrganization.html
https://www.hl7.org/fhir/bodyweight.html
