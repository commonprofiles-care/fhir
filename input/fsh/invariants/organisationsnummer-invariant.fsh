Invariant: organisationsnummer-invariant
Description: "All identifiers that identifies as organisationsnummer SHALL comply with the specified regex:^\\d{10}$"
Expression: "$this.toString().matches('^\\\\d{10}$')"
Severity: #error
XPath: "f:value"
