variable "route53_zone_id" {
  description = "The Route53 Zone ID to associate the Route53 Record with."
}

variable "route53_record_name" {
  description = "Route53 record name for EIP configuration."
}

variable "route53_record_type" {
  description = "Route53 record type, e.g. A record."
}

variable "route53_record_ttl" {
  description = "Route53 record TTL."
}

variable "route53_record_value" {
  description = "Route53 record value."
}
