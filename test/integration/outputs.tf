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

output "name" {
  value       = "${module.service_account.name}"
  description = "The name used for this service account."
}

output "email" {
  value       = "${module.service_account.email}"
  description = "The email address used for this service account."
}

output "display_name" {
  value       = "${random_id.service_account.hex}"
  description = "The display name of this service account."
}

output "public_key" {
  value       = "${module.service_account.public_key}"
  description = "The public key, base64 encoded."
}

output "private_key" {
  value       = "${module.service_account.private_key}"
  description = "The private key material, base 64 encoded and encrypted with the given pgp_key."
}

output "private_key_fingerprint" {
  value       = "${module.service_account.private_key_fingerprint}"
  description = " The MD5 public key fingerprint for the encrypted private key."
}
