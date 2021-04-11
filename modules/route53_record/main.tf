resource "aws_route53_record" "route53_record" {
  zone_id         = var.route53_zone_id
  allow_overwrite = true
  name            = var.route53_record_name
  type            = var.route53_record_type
  ttl             = var.route53_record_ttl
  records         = var.route53_record_value
}
