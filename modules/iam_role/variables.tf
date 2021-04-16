variable "role_name" {
  description = "The IAM Role name."
}

variable "assume_role_policy" {
  description = "The Assume Role IAM Policy for the IAM Role."
}

variable "path" {
  description = "The Path for the IAM Role."
  default     = "/"
}
