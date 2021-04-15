variable "name" {
  description = "IAM Group name."
}

variable "path" {
  description = "IAM Group path."
  default     = "/"
}

variable "tags" {
  description = "Tags for the IAM Group."
  type        = map
  default     = { }
}
