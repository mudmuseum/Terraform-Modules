output "route53_record" {
  description = "A Record entry in Hosted Zone for mudmuseum.com."
  value = aws_route53_record.route53_record.fqdn
}
