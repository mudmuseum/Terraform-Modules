resource "aws_route53_zone" "route53_zone" {
  name          = var.route53_zone_name

  lifecycle {
    prevent_destroy = true
  }
}
