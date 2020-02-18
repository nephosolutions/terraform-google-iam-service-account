# Copyright 2020 NephoSolutions SRL, Sebastian Trebitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

locals {
  account_id = join("-", [random_pet.prefix.id, random_id.service_account.hex])
}

resource "random_id" "service_account" {
  byte_length = 4
}

resource "random_pet" "prefix" {
}

resource "google_service_account" "managed" {
  account_id   = var.account_id != "" ? var.account_id : local.account_id
  description  = var.description != "" ? var.description : null
  display_name = var.display_name
  project      = var.project_id != "" ? var.project_id : null
}
