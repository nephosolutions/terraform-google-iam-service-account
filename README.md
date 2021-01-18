# Google Cloud Platform IAM service account Terraform module

This terraform module provisions a Google Cloud Platform IAM service account.

## Usage

```hcl
module "service_account" {
  source  = "nephosolutions/iam-service-account/google"
  version = "3.1.0"

  display_name  = "Application description"
  project_id    = var.gcp_project_id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| google | >= 3.5 |
| random | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| google | >= 3.5 |
| random | >= 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| account\_id | The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]\*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created. Defaults to a random random `account_id`. | `string` | `""` | no |
| description | A text description of the service account. Must be less than or equal to 256 UTF-8 bytes. | `string` | `""` | no |
| display\_name | The display name for the service account. Can be updated without creating a new resource. | `any` | n/a | yes |
| project\_id | The ID of the GCP project that the service account will be created in. Defaults to the provider project configuration, if left empty. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| description | A text description of the service account. |
| email | The e-mail address of the service account. This value should be referenced from any google\_iam\_policy data sources that would grant the service account privileges. |
| name | The fully-qualified name of the service account. |
| project\_id | The ID of the GCP project that the service account will be created in. |
| unique\_id | The unique id of the service account. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
