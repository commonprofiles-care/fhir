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
* item.initial.valueString MS
* item.repeats 1.. MS
* item.repeats = false
* item.readOnly 1.. MS
* item.readOnly = false

// Instance: QuestionnaireSEVendorLiteExample
// InstanceOf: QuestionnaireSEVendorLite
// Description: "Questionnaire example."

