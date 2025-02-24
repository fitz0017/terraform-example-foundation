/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "backend_bucket" {
  description = "Backend bucket to load remote state information from previous steps."
  type        = string
}

variable "access_context_manager_policy_id" {
  type        = number
  description = "The id of the default Access Context Manager policy created in step `1-org`. Can be obtained by running `gcloud access-context-manager policies list --organization YOUR_ORGANIZATION_ID --format=\"value(name)\"`."
}

variable "terraform_service_account" {
  type        = string
  description = "Service account email of the account to be added to the VPC-SC perimeter."
}

variable "domain" {
  type        = string
  description = "The DNS name of peering managed zone, for instance 'example.com.'. Must end with a period."
}
