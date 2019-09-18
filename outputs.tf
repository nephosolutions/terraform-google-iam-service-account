# Copyright 2019 NephoSolutions SPRL, Sebastian Trebitz
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

output "email" {
  value       = google_service_account.managed.email
  description = "The e-mail address of the service account. This value should be referenced from any google_iam_policy data sources that would grant the service account privileges."
}

output "name" {
  value       = google_service_account.managed.name
  description = "The fully-qualified name of the service account."
}

output "unique_id" {
  value       = google_service_account.managed.unique_id
  description = "The unique id of the service account."
}
