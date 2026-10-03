GRC Engineering Compliance Policies

| Policy file | Control ID | Framework | Severity | Remediation |
| --- | --- | --- | --- | -- |
| sc28_encryption.rego | SC-28 | NIST 800-53 | High | Add an encryption { default_kms_key_name = ... } block referencing a google_kms_crypto_key you control. |
| ac3_no_public.rego | AC-3 | NIST 800-53 | Critical | Set uniform_bucket_level_access = true, public_access_prevention = enforced. For firewalls, narrow source_ranges or remove the rule. |
| cm6_required_tags.rego | CM-6 | NIST 800-53 | Medium | Add the four required labels (project, environment, managed_by, compliance_scope) to the resource. |