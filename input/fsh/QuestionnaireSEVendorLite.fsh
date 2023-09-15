Profile: QuestionnaireSEVendorLite
Parent: Questionnaire
Description: "Questionnaire with restrictions for swedish vendors."

* identifier 1.. MS
* subjectType MS
* subjectType = #Patient
* code 1.. MS // Binding for this?

* item.answerOption.value[x] only string
* item.answerOption.value[x] MS
* item.answerOption.valueString MS
* item.initial ..1 MS
* item.initial.value[x] only string
* item.initial.value[x] MS
* item.initial.valueString MSg
* item.repeats 1.. MS
* item.repeats = false
* item.readOnly 1.. MS
* item.repeats = false

// Instance: PatientSEVendorLiteExample
// InstanceOf: PatientSEVendorLite
// Description: "Patient example."
// * name
//   * given[0] = "Kalle"
//   * family = "Krank"
// * identifier[personnummer].value = "191212121212"
// * deceasedBoolean = false
