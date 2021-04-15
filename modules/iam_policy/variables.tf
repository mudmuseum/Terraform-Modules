variable "name" {
  description = "Name for the IAM Policy."
}

variable "description" {
  description = "Description for the IAM Policy."
  default     = ""
}

variable "policy" {
  description = "A JSON Policy to apply within the IAM Policy resource."
}

variable "tags" {
  description = "Tags for the IAM Policy."
  type        = map
  default     = { }
}
