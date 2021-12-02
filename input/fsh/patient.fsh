Profile: CommonsPatient
Parent: SEBasePatient
Description: "Simplified patient for identification for communication between systems in Sweden"

* identifier[personnummer] ..1
* identifier[samordningsnummer] ..1
* identifier 1..1
* deceased[x] only boolean

*       name
    and identifier[personnummer]
    and identifier[samordningsnummer]
    and identifier
    and deceasedBoolean
  MS

Instance: CommonsPatientExample
InstanceOf: CommonsPatient
Description: "Patient example."
* name
  * given[0] = "Kalle"
  * family = "Krank"
* identifier[personnummer].value = "19121212-1212"
* deceasedBoolean = false