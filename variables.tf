variable "project" {
  type = string
}

variable "env_name" {
  type = string
}

variable "region" {
  type = string
}

variable "management_cidr" {
  type        = string
  description = "cidr for management subnet"
  default     = "10.0.0.0/24"
}

variable "pas_cidr" {
  type        = string
  description = "cidr for pas subnet"
  default     = "10.0.4.0/24"
}

variable "services_cidr" {
  type        = string
  description = "cidr for services subnet"
  default     = "10.0.8.0/24"
}

variable "zones" {
  type = list(string)
}

variable "opsman_image_url" {
  type        = string
  description = "location of ops manager image on google cloud storage"
}

variable "optional_opsman_image_url" {
  type        = string
  description = "location of ops manager image (to be used for optional extra instance) on google cloud storage"
  default     = ""
}

variable "opsman_image_id" {
  type        = string
  description = "public ops manager image identifier. Of the form: project_id/image_id"
}

variable "optional_opsman_image_id" {
  type        = string
  description = "public ops manager image identifier (to be used for optional extra instance). Of the form: project_id/image_id"
  default     = ""
}

variable "opsman_machine_type" {
  type    = string
  default = "e2-standard-2"
}

variable "service_account_key" {
  type = string
}

variable "dns_suffix" {
  type = string
}

variable "ssl_cert" {
  type        = string
  description = "ssl certificate content"
}

variable "ssl_private_key" {
  type        = string
  description = "ssl certificate private key content"
}

/******************
 * OpsMan Options *
 ******************/

variable "opsman_storage_bucket_count" {
  type        = string
  default     = "0"
  description = "Optional configuration of a Google Storage Bucket for BOSH's blobstore"
}

variable "pas_sql_db_host" {
  type    = string
  default = ""
}

variable "opsman_sql_db_host" {
  type    = string
  default = ""
}

/********************************
 * Google Cloud Storage Options *
 ********************************/

variable "create_gcs_buckets" {
  description = "create Google Storage Buckets for Elastic Runtime Cloud Controller's file storage"
  default     = true
}

