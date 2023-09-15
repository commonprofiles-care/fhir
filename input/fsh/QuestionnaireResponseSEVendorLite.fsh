Profile: QuestionnaireResponseSEVendorLite
Parent: QuestionnaireResponse
Description: "Questionnaire response with restrictions for swedish vendors."
* identifier 1.. MS
* subject only Reference(PatientSEVendorLite)
* questionnaire only Canonical(QuestionnaireSEVendorLite)
* item.answer.value[x] only string
* item.answer.value[x] MS
* item.answer.valueString MS

// Instance: QuestionnaireResponseSEVendorLiteExample
// InstanceOf: QuestionnaireResponseSEVendorLite
// Description: "Questionnaire response example."
