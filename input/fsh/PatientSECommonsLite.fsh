Profile: PatientSECommonsLite
Parent: SEBasePatient
Description: "Simplified patient for identification for communication between systems in Sweden"
* identifier 1.. MS

* identifier[personnummer] ..1
* identifier[samordningsnummer] ..1
* identifier[nationelltReservnummer] ..1
* identifier[personnummer].value 1..
* identifier[samordningsnummer].value 1..
* identifier[nationelltReservnummer].value 1..

* identifier[personnummer].value obeys personnummer-invariant
* identifier[personnummer].value ^example.label = "General"
* identifier[personnummer].value ^example.valueString = "191212121212"
* identifier[samordningsnummer].value obeys samordningsnummer-invariant
* identifier[samordningsnummer].value ^example.label = "General"
* identifier[samordningsnummer].value ^example.valueString = "197010632391"

* deceased[x] only boolean

*       name
    and identifier[personnummer]
    and identifier[samordningsnummer]
    and identifier[nationelltReservnummer]
    and identifier
    and deceasedBoolean
  MS

* telecom.system 1.. MS
* telecom.value 1.. MS
