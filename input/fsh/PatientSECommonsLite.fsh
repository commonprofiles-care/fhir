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


Instance: minimal-patient
InstanceOf: PatientSECommonsLite
Description: "Patient example."
* name
  * given[0] = "Kalle"
  * family = "Krank"
* identifier[personnummer].value = "191212121212"
* deceasedBoolean = false

Instance: minimal-patient2
InstanceOf: PatientSECommonsLite
Description: "Another Patient example."
Usage: #example
* meta.profile = Canonical(PatientSECommonsLite)
* identifier.use = #official
* identifier.system = "http://electronichealth.se/identifier/personnummer"
* identifier.value = "191212121212"
* name.use = #official
* name.given = "Kalle"
* name.family = "Krank"
* telecom[0].system = #phone
* telecom[=].value = "0712345678"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "kalle.krank@example.com"
* telecom[=].use = #home
* deceasedBoolean = false

Instance: maximal-patient
InstanceOf: PatientSECommonsLite
Description: "Maximal patient example."
Usage: #example
* meta.profile = Canonical(PatientSECommonsLite)
* identifier[0]
  * use = #official
  * system = "http://electronichealth.se/identifier/personnummer"
  * value = "191212121212"
  * period.start = "1912-12-12"
  * assigner.display = "Swedish Tax Agency"
* identifier[+]
  * use = #official
  * system = "http://electronichealth.se/identifier/samordningsnummer"
  * value = "197010632391"
  * period.start = "1970-10-03"
  * assigner.display = "Swedish Tax Agency"
* identifier[+]
  * use = #official
  * system = "http://electronichealth.se/identifier/nationelltReservnumer"
  * value = "198010101010"
  * period.start = "1980-01-01"
  * assigner.display = "Swedish Healthcare Agency"
* name
  * use = #official
  * given = "Kalle"
  * family = "Krank"
* telecom[0]
  * system = #phone
  * value = "0712345678"
  * use = #mobile
* telecom[+]
  * system = #email
  * value = "kalle.krank@example.com"
  * use = #home
* gender = #male
* birthDate = "1912-12-12"
* deceasedBoolean = false
* address
  * use = #home
  * type = #both
  * text = "Storgatan 1, 123 45 Lyckostad"
  * line = "Storgatan 1"
  * city = "Lyckostad"
  * district = "Lycko kommun"
  * state = "Lyckolän"
  * postalCode = "123 45"
  * country = "Sverige"
* maritalStatus = MARITALSTATUS#M "Married"
* contact
  * relationship = CONTACTROLE2#C "Emergency Contact"
  * name
    * family = "Kranksson"
    * given = "Kajsa"
  * telecom
    * system = #phone
    * value = "0798765432"
    * use = #mobile
  * address
    * use = #home
    * type = #both
    * text = "Storgatan 1, 123 45 Lyckostad"
    * line = "Storgatan 1"
    * city = "Lyckostad"
    * district = "Lycko kommun"
    * state = "Lyckolän"
    * postalCode = "123 45"
    * country = "Sverige"
