Invariant: arrived-encounter-invariant
Description: "If status is arrived, then period.start must be present."
Expression: "status = 'arrived' implies (period.start.exists() and period.end.exists().not())"
Severity: #error