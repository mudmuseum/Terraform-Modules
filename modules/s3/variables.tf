variable "bucket" {
  description = "The name of the bucket."
  type        = string
}

variable "logging_target_bucket" {
  description = "Bucket to send standard logs to."
  type        = string
  default     = null
}

variable "logging_target_prefix" {
  description = "Prefix for standard logs sent to the logging_target_bucket."
  type        = string
  default     = null
}

variable "force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  default     = false
}

variable "lifecycle_id" {
  description = "The ID for the lifecycle rule."
  default     = ""
}

variable "enabled" {
  description = "Whether the lifecycle rule is enabled or not."
  default     = false
}

variable "abort_incomplete_multipart" {
  description = "Abort Incomplete Multipart Upload after value days."
  default     = null
}

variable "expiration_days" {
  description = "Objects expire after value days."
  default     = null
}

variable "expired_object_delete_marker" {
  description = "Determines if there's an expired object delete marker."
  default     = null
}

variable "noncurrent_days" {
  description = "Expiration time in days for noncurrent versions."
  default     = null
}

variable "grants" {
  description = "A list of maps of grants for the S3 bucket access."
  type        = list
  default     = [ ]
}
