Invariant: planned-encounter-invariant
Description: "If status is planned, then no period shall be present."
Expression: "status = 'planned' implies (period.start.exists().not() and period.end.exists().not())"
Severity: #error