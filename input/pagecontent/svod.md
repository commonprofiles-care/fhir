# Introduction
This is the summary page for all the profiles related to managing SVOD. Each subdomain have its own set of profiles and a corresponding subpage in this ImplementationGuide.

## External references and sources
For more information about SVOD these links can prove valuable:
[The National Board of Health and Welfare have summarized the SVOD law and its consequences](https://www.socialstyrelsen.se/kunskapsstod-och-regler/regler-och-riktlinjer/sammanhallen-vard--och-omsorgsdokumentation--samlat-stod/)

[Inera also made a summary of the impact the SVOD law has on the Swedish regions](https://www.inera.se/globalassets/inera/media/dokument/projekt/svod/sammanhallen-vard--och-omsorgsdokumentation_rapport.pdf)

## Blocks
This chapter explains how to interpret the structure of the [ConsentBlockSE](StructureDefinition-ConsentBlockSE.html) profile.

### Intended use
This profile defines how to represent a block ("spärr" in Swedish), in accordance with the Swedish Patient Data Act (SVOD). A block is a restriction set by a patient that prevents clinicians at certain care units or care providers from accessing the patient's data. A block can be set as either inner or outer. An inner block means that the patient has blocked the access to their data to only the specific care unit that the data belongs to. This implies that other care units within the same care provider and other care providers are not granted access. An outer block means that the patient has blocked access to their data to only the specific care provider that the data belongs to. This implies that all care units within the same care provider have access, while other care providers do not.

The profile is based on the Consent resource and has the following main features and capabilities:

* The profile has a fixed purpose of recording and maintaining patient blocks, and a fixed scope of patient privacy.
* The profile uses slicing of the category element to specify what type of block it is.
* The profile requires a patient reference, a policy URI to a document that identifies the rules for applying the block and at least a start date and time of when the block comes in effect.
* The profile is designed so that the root Consent.provision element defines that this is a block and that it limits all access to the patient's electronic health record. The Consent.provision.provision in return, which is nestled into the Consent.provision element, contains exceptions to the block. There will always be one organization that is allowed access regardless of the block and there is also the possibility to make exceptions for certain kinds of data in the health records as well. These are recorded within Consent.provision.provision.

## Consents
This chapter explains how to interpret the structure of the [ConsentSharedElectronicHealthRecordSE](StructureDefinition-ConsentSharedElectronicHealthRecordSE.html) profile.

### Intended use
This profile defines how to represent a patient's consent to share their personal health record ("samtycke till att ingå i sammanhållen journalföring" in Swedish) with a clinician or a care unit, in accordance with Swedish Patient Data Act (SVOD). This consent allows the clinician or all clinicians at a care unit to access the patient's health record from another care provider than their own. Data from other care providers is illegal to access unless there is a consent, such as one defined in this profile, or the clinicians perceive there to be an immediate risk to the patient's life ("emergency").

## Revocations
This chapter explains how to interpret the structure of the [ConsentTemporaryRevocationSE](StructureDefinition-ConsentTemporaryRevocationSE.html) profile.

### Intended use
This profile defines how to represent a temporary revocation of an inner block ("tillfällig hävning av inre spärr" in Swedish), in accordance with Swedish Patient Data Act (SVOD). An inner block means that the patient has blocked access to their data belonging to a specific care unit from outside of that care unit. A temporary revocation of an inner block means that the inner block is temporarily lifted for a specific clinician or a care unit outside of the care unit where the block was set, but within the same care provider. In order to enforce a temporary revocation, patient consent is needed. A temporary revocation is, as the name implies, temporary and should only be active for a short period of time.