Instance: questionnaire-se-example
InstanceOf: QuestionnaireSECommonsLite
Description: "Example questionnaire."
Usage: #example

* identifier.system = EX
* identifier.value = "q1"
* status = #active
* name = "Example questionnaire"
* title = "Example questionnaire"
* code = EX#example
* item[+].text = "Questionnaire group"
* item[=].linkId = "linkId_1"
* item[=].code = EX_ANY#groupItem
* item[=].type = #group

* item[=].item[+].text = "Short text string, fixed item"
* item[=].item[=].linkId = "linkId_1_1"
* item[=].item[=].type = #string

* item[=].item[+].text = "Long text"
* item[=].item[=].linkId = "linkId_1_2"
* item[=].item[=].type = #text

* item[=].item[+].text = "Select list from ValueSet"
* item[=].item[=].linkId = "linkId_1_3"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = DEMO_VS

* item[=].item[+].text = "Select list from inline values"
* item[=].item[=].linkId = "linkId_1_4"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[+].valueCoding = EX_BOOL#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = EX_BOOL#N "No"
* item[=].item[=].answerOption[+].valueCoding = EX_BOOL#YN "Sometimes"

* item[=].item[+].text = "Combo-box answer"
* item[=].item[=].linkId = "linkId_1_5"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[+].valueString = "Yes"
* item[=].item[=].answerOption[+].valueString = "No"
* item[=].item[=].answerOption[+].valueString = "Sometimes"


* item[=].item[+].text = "Multiple choice"
* item[=].item[=].linkId = "linkId_1_6"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[+].valueCoding = EX_BOOL#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = EX_BOOL#N "No"
* item[=].item[=].answerOption[+].valueCoding = EX_BOOL#YN "Sometimes"

* item[=].item[+].text = "Diagnosis"
* item[=].item[=].linkId = "linkId_1_7"
* item[=].item[=].type = #open-choice
* item[=].item[=].code = LOINC#29308-4
* item[=].item[=].repeats = true
* item[=].item[=].answerValueSet = Canonical(http://hl7.org/fhir/ValueSet/icd-10)

