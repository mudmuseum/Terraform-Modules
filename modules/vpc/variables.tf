variable "cidr_block" {
  description = "The CIDR Block for the VPC."
  default     = "10.0.0.0/16"
}

variable "tag_name" {
  description = "Tag 'Name' association for the VPC."
}
