# Google Cloud Platform IAM service account Terraform module

This terraform module provisions a Google Cloud Platform IAM service account.

## Usage

```hcl
module "service_account" {
  source  = "nephosolutions/iam-service-account/google"
  version = "3.0.0"

  display_name  = "Application description"
  project_id    = var.gcp_project_id
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| display\_name | The display name for the service account. Can be updated without creating a new resource. | string | n/a | yes |
| project\_id | The ID of the GCP project that the service account will be created in. Defaults to the provider project configuration, if left empty. | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| email | The e-mail address of the service account. This value should be referenced from any google_iam_policy data sources that would grant the service account privileges. |
| name | The fully-qualified name of the service account. |
| unique\_id | The unique id of the service account. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
