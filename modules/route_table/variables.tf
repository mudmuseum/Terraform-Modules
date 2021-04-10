variable "vpc_id" {
  description = "VPC ID to associate the Route Table with."
}

variable "route_table_public_cidr_block" {
  description = "The Public CIDR Block for the Route Table."
}

variable "route_table_ipv6_public_cidr_block" {
  description = "The Public IPv6 CIDR Block for the Route Table."
}

variable "internet_gateway_id" {
  description = "The ID for the Internet Gateway."
}

variable "route_table_tag_name" {
  description = "The tag name for the Route Table."
}
