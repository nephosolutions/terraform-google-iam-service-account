# Google Cloud Platform IAM service account Terraform module

This terraform module provisions a Google Cloud Platform IAM service account.
A service account private_key pair can be provisioned, optionally.
The module enforces the encryption of the private_key material.

## Usage

```hcl
module "service_account" {
  source  = "nephosolutions/iam-service-account/google"
  version = "0.1.0"

  account_id    = "application"
  display_name  = "Application description"
  project_id    = "${var.gcp_project_id}"

  create_service_account_key_pair = true

  pgp_key = "${var.pgp_key_material}"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| account_id | The service account ID. Changing this forces a new service account to be created. | string | - | yes |
| create_service_account_key_pair | Whether to create a key_pair for this service account. | string | `false` | no |
| display_name | The display name for the service account. Can be updated without creating a new resource. | string | - | yes |
| pgp_key | A PGP key to encrypt the resulting private key material. Only used when creating or importing a new key pair. May either be a base64-encoded public key or a keybase:keybaseusername string for looking up in Vault. | string | - | yes |
| project_id | The ID of the GCP project that the service account will be created in. | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| email | The name used for this key pair. |
| name | The name used for this key pair. |
| private_key | The private key material, base 64 encoded and encrypted with the given pgp_key. |
| private_key_fingerprint | The MD5 public key fingerprint for the encrypted private key. |
| public_key | The public key, base64 encoded. |
