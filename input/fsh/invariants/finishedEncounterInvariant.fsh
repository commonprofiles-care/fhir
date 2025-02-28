Invariant: finished-encounter-invariant
Description: "If status is 'finshed', then period.start and period.end must be present."
Expression: "status = 'finished' implies (period.start.exists() and period.end.exists())"
Severity: #error