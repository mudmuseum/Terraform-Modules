variable "domain_name" {
  description = "Domain name for the AWS Certificate Manager request."
}

variable "subject_alternative_names" {
  description = "Subject Alternative Names (SAN) for the AWS Certificate Manager request."
}

variable "validation_method" {
  description = "Method for validating the AWS Certificate Manager request."
  default     = "DNS"
}

variable "tags" {
  description = "Tags for the Certificate."
  type        = map
  default     = { }
}
