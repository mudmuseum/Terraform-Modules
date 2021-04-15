variable "cidr_block" {
  description = "The CIDR Block for the VPC."
  default     = "10.0.0.0/16"
}

variable "tags" {
  description = "Tags for the VPC."
  type        = map
  default     = { }
}
