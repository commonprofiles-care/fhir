Instance: questionnaire-response-se-example
InstanceOf: QuestionnaireResponseSECommonsLite
Description: "Example questionnaire response."
Usage: #example

* identifier.system = EX
* identifier.value = "qrId_1"
* questionnaire = Canonical(questionnaire-se-example)
* status = #completed
* item[+].text = "Questionnaire group"
* item[=].linkId = "linkId_1"

* item[=].item[+].text = "Short text string, fixed item"
* item[=].item[=].linkId = "linkId_1_1"
* item[=].item[=].answer.valueString = "a short answer string"

* item[=].item[+].text = "Long text"
* item[=].item[=].linkId = "linkId_1_2"
* item[=].item[=].answer.valueString = """a long answer string.
 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam in nulla odio. Aenean vel congue turpis. Proin bibendum, risus vitae scelerisque ullamcorper, arcu turpis fringilla felis, et scelerisque neque diam vel lorem. Morbi sit amet laoreet turpis. Proin non ullamcorper metus. Nam facilisis ultrices tellus, non tempus nunc imperdiet vel. Nulla scelerisque mi magna, in molestie lacus faucibus quis. Sed condimentum convallis commodo. Nullam non risus eu mauris congue tristique. Duis blandit porttitor maximus. Nullam id blandit justo. Nulla facilisi. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.

In sed venenatis dui. Maecenas tincidunt faucibus purus id porttitor. Etiam cursus risus nec odio scelerisque molestie. Quisque eget nisl mauris. Maecenas non ipsum mauris. Ut placerat tempor tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque sed vestibulum ex. Maecenas a quam non nulla elementum convallis. Phasellus tortor enim, hendrerit vel felis id, ullamcorper egestas dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et ultricies mi. Donec at metus sit amet ante facilisis gravida. Suspendisse sed condimentum ipsum. Cras odio odio, condimentum eget lobortis in, rhoncus vel justo. Praesent molestie velit eget fringilla bibendum.
"""

* item[=].item[+].text = "Select list from ValueSet"
* item[=].item[=].linkId = "linkId_1_3"
* item[=].item[=].answer.valueCoding = DEMO_VS#A_CODE

* item[=].item[+].text = "Select list from inline values"
* item[=].item[=].linkId = "linkId_1_4"
* item[=].item[=].answer.valueCoding = EX_BOOL#YN

* item[=].item[+].text = "Combo-box answer"
* item[=].item[=].linkId = "linkId_1_5"
* item[=].item[=].answer.valueString = "Sometimes"


* item[=].item[+].text = "Multiple choice"
* item[=].item[=].linkId = "linkId_1_6"
* item[=].item[=].answer.valueCoding = EX_BOOL#Y
* item[=].item[=].answer.valueCoding = EX_BOOL#YN


* item[=].item[+].text = "Diagnosis"
* item[=].item[=].linkId = "linkId_1_7"
* item[=].item[=].answer.valueCoding = ICD10#123456
