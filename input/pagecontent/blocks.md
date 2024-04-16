# Introduction
This page explains how to interpret the structure of the [ConsentBlockSE](StructureDefinition-ConsentBlockSE.html) profile.

## Intended use
This profile defines how to represent a block ("spärr" in Swedish), in accordance with the Swedish Patient Data Act. A block is a restriction set by a patient that prevents clinicians at certain care units or care providers from accessing the patient's data. A block can be set as either inner or outer. An inner block means that the patient has blocked the access to their data to only the specific care unit that the data belongs to. This implies that other care units within the same care provider and other care providers are not granted access. An outer block means that the patient has blocked access to their data to only the specific care provider that the data belongs to. This implies that all care units within the same care provider have access, while other care providers do not.

The profile is based on the Consent resource and has the following main features and capabilities:

* The profile has a fixed purpose of recording and maintaining patient blocks, and a fixed scope of patient privacy.
* The profile uses slicing of the category element to specify what type of block it is.
* The profile requires a patient reference, a policy URI to a document that identifies the rules for applying the block and at least a start date and time of when the block comes in effect.
* The profile is designed so that the root Consent.provision element defines that this is a block and that it limits all access to the patient's electronic health record. The Consent.provision.provision in return, which is nestled into the Consent.provision element, contains exceptions to the block. There will always be one organization that is allowed access regardless of the block and there is also the possibility to make exceptions for certain kinds of data in the health records as well. These are recorded within Consent.provision.provision.