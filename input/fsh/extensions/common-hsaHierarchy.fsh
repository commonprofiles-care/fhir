Extension: HsaHierarchy
Id: common-hsaHierarchy
Title: "HSA Hierarchy"

* extension contains
        HsaReference named hsaCareProvider ..1
    and HsaReference named hsaCareUnit ..1

* value[x] ..0

Extension: HsaReference
Id: common-hsaReference
Title: "HSA Reference"

* value[x] only Reference(OrganizationSEVendorLite)

* valueReference 1..
* valueReference.identifier.use = #official
* valueReference.identifier.system = HSA_ORG_ID
* valueReference.identifier.system 1..
* valueReference.identifier.value 1..

