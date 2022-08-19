Profile: PatientSEVendorLite
Parent: SEBasePatient
Description: "Simplified patient for identification for communication between systems in Sweden"

* identifier[personnummer] ..1
* identifier[samordningsnummer] ..1

* identifier[personnummer].value 1.. MS
* identifier[samordningsnummer].value 1.. MS
* identifier[nationelltReservnummer].value 1.. MS

* identifier 1..1
* deceased[x] only boolean

*       name
    and identifier[personnummer]
    and identifier[samordningsnummer]
    and identifier
    and deceasedBoolean
  MS

* telecom.system 1.. MS
* telecom.value 1.. MS

* link ..0
* active ..0
* name.use ..0
* name.period ..0
* telecom.period ..0
* address ..0
* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner ..0
* managingOrganization ..0


Instance: PatientSEVendorLiteExample
InstanceOf: PatientSEVendorLite
Description: "Patient example."
* name
  * given[0] = "Kalle"
  * family = "Krank"
* identifier[personnummer].value = "19121212-1212"
* deceasedBoolean = false