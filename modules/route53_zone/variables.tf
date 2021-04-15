variable "route53_zone_name" {
  description = "The Route53 Zone name."
}

variable "tags" {
  description = "Tags for the Route53 Zone."
  type        = map
  default     = { }
}
