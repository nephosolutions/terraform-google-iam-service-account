# Copyright 2021 NephoSolutions SRL, Sebastian Trebitz
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

variable "account_id" {
  description = "The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created. Defaults to a random random `account_id`."
  default     = ""
}

variable "description" {
  description = "A text description of the service account. Must be less than or equal to 256 UTF-8 bytes."
  default     = ""
}

variable "display_name" {
  description = "The display name for the service account. Can be updated without creating a new resource."
}

variable "project_id" {
  description = "The ID of the GCP project that the service account will be created in. Defaults to the provider project configuration, if left empty."
  default     = ""
}
