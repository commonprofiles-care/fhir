Profile: PatientIdentifierPatternConformanceSE
Parent: PatientSEVendorLite
Id: PatientIdentifierPatternConformanceSE
Description: "This profile enables format limitations to be put on the identifier in order to comply with Swedish legislation."
//* ^url = "http://care.commonprofiles.fhir/StructureDefinition/PatientIdentifierPatternConformanceSE"
* ^version = "1.0.0"
* ^status = #active
* identifier[personnummer].value obeys personnummer-invariant
* identifier[personnummer].value ^example.label = "General"
* identifier[personnummer].value ^example.valueString = "191212121212"
* identifier[samordningsnummer].value obeys samordningsnummer-invariant
* identifier[samordningsnummer].value ^example.label = "General"
* identifier[samordningsnummer].value ^example.valueString = "197010632391"

Invariant: personnummer-invariant
Description: "All identifiers that identifies as personnummer SHALL comply with the specified regex:  
^(18|19|[2-9]\\d)\\d{2}(0[1-9]|1[012])([0-2]\\d|3[0-1])\\d{4}"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(18|19|[2-9]\\\\d)\\\\d{2}(0[1-9]|1[012])([0-2]\\\\d|3[0-1])\\\\d{4}')"
XPath: "f:value"

Invariant: samordningsnummer-invariant
Description: "All identifiers that identifies as samordningsnummer SHALL comply with the specified regex: 
^(18|19|[2-9]\\d)\\d{2}(0[1-9]|1[012])([0-8]\\d|9[0-1])\\d{4}"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(18|19|[2-9]\\\\d)\\\\d{2}(0[1-9]|1[012])([0-8]\\\\d|9[0-1])\\\\d{4}')"
XPath: "f:value"
