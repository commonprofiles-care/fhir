Invariant: samordningsnummer-invariant
Description: "All identifiers that identifies as samordningsnummer SHALL comply with the specified regex: 
^(18|19|[2-9]\\d)\\d{2}(0[1-9]|1[012])([0-8]\\d|9[0-1])\\d{4}"
Severity: #error
// Support dead patients who born in 19th century.
Expression: "$this.toString().matches('^(18|19|[2-9]\\\\d)\\\\d{2}(0[1-9]|1[012])([0-8]\\\\d|9[0-1])\\\\d{4}')"
XPath: "f:value"
