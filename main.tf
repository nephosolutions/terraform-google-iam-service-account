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

resource "google_service_account" "default" {
  account_id   = var.account_id
  display_name = var.display_name
  project      = var.project_id
}

locals {
  default_service_account_private_key   = var.create_service_account_key_pair && var.pgp_key == "" ? 1 : 0
  encrypted_service_account_private_key = var.create_service_account_key_pair && var.pgp_key != "" ? 1 : 0
}

resource "google_service_account_key" "default" {
  count = local.default_service_account_private_key

  service_account_id = google_service_account.default.id
}

resource "google_service_account_key" "encrypted" {
  count = local.encrypted_service_account_private_key

  service_account_id = google_service_account.default.id
  pgp_key            = var.pgp_key
}

