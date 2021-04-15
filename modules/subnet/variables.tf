variable "vpc_id" {
  description = "The VPC ID to associate the Subnet to."
}

variable "public_subnet_cidr_block" {
  description = "Public Subnet CIDR Block."
  default     = "10.0.0.0/24"
}

variable "public_subnet_availability_zone" {
  description = "Public Subnet Availability Zone."
  default     = "us-east-1a"
}

variable "tags" {
  description = "Tags for the Subnet."
  type        = map
  default     = { }
}
