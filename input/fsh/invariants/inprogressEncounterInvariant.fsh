Invariant: in-progress-encounter-invariant
Description: "If status is in-progress, then period.start must be present."
Expression: "status = 'in-progress' implies (period.start.exists() and period.end.exists().not())"
Severity: #error