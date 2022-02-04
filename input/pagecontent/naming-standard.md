# Naming standard

Names of profiles shoudl confirm to this patter:

```
<Parent resource/profile>SEIndustry<Profile type>
```
i.e. the parent followed by the string literal `SEIndustry` followed by the profile type, where `Profile type` could be one of:

- `Lite` a extensively constrained profile for light use cases, i.e. requiring few data elements
- `Full` a less constrained profile...

## Examples

```
OrganizationSEIndustryLite
PatientSEIndustryFull
VitalSignsSEIndustryFull
```
