# terraform/primitives/compliant-gcs/main.tf
terraform {
  required_version = ">= 1.6"
  required_providers {
    google = { source = "hashicorp/google", version = "~> 5.0" }
  }
}

provider "google" {
  project = "your-gcp-project"
  region  = "us-central1"
}

# terraform/primitives/compliant-gcs-prod/main.tf  (module block; also include provider + outputs from Step 4)
module "data_bucket" {
  source = "../../modules/compliant-gcs-bucket"

  gcp_project        = "cgep-labs-kemi-2026"
  project_label      = "cgep-lab"
  environment        = "prod"
  retention_days     = 365
  bucket_name_suffix = "prod-data-kemi26"   # use your personal suffix, e.g. prod-data-<your-initials>
}

output "attestation" { value = module.data_bucket.compliance_attestation }
output "bucket_url"  { value = module.data_bucket.bucket_url }
output "kms_key_id"  { value = module.data_bucket.kms_key_id }
