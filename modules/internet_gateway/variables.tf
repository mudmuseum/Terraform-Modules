variable "vpc_id" {
  description = "The VPC to associate the Internet Gateway with."
}

variable "tags" {
  description = "The tags for the Internet Gateway."
  type        = map
  default     = { }
}
