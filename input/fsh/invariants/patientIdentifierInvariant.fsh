Invariant: patient-identifier-system-invariant
Description: "The identifier.system of a patient must be 'http://electronichealth.se/identifier/personnummer' or 'http://electronichealth.se/identifier/samordningsnummer'."
Expression: "type = 'Patient' implies identifier.exists((system = 'http://electronichealth.se/identifier/personnummer') or (system = 'http://electronichealth.se/identifier/samordningsnummer'))"
Severity: #error