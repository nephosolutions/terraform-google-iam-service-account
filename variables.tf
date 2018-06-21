#   Copyright 2018 NephoSolutions SPRL, Sebastian Trebitz
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

variable "account_id" {
  description = "The service account ID. Changing this forces a new service account to be created."
}

variable "create_service_account_key_pair" {
  default = "false"
  description = "Whether to create a key_pair for this service account."
}

variable "display_name" {
  description = "The display name for the service account. Can be updated without creating a new resource."
}

variable "pgp_key" {
  description = "A PGP key to encrypt the resulting private key material. Only used when creating or importing a new key pair. May either be a base64-encoded public key or a keybase:keybaseusername string for looking up in Vault."
}

variable "project_id" {
  description = "The ID of the GCP project that the service account will be created in."
}
