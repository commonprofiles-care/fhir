Invariant: grantor-pid-occurence-invariant
Description: "If personnummer is present, samordningsnummer shall not exist for grantor and vice versa."
Expression: "(actor.reference.identifier.exists(system = 'http://electronichealth.se/identifier/personnummer')) xor (actor.reference.identifier.exists(system = 'http://electronichealth.se/identifier/samordningsnummer'))"
Severity: #error