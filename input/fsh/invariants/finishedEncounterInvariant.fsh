Invariant: finished-encounter-invariant
Description: "If status is ongoing, then period.start must be present."
Expression: "status = 'finished' implies (period.start.exists() and period.end.exists())"
Severity: #error