Profile: QuestionnaireResponseSEVendorLite
Parent: QuestionnaireResponse
Description: "Questionnaire with restrictions for swedish vendors."
* identifier 1.. MS
* subject only Reference(PatientSEVendorLite)

* item.answer.value[x] only string
* item.answer.value[x] MS
* item.answer.valueString MS

// Instance: PatientSEVendorLiteExample
// InstanceOf: PatientSEVendorLite
// Description: "Patient example."
// * name
//   * given[0] = "Kalle"
//   * family = "Krank"
// * identifier[personnummer].value = "191212121212"
// * deceasedBoolean = false
