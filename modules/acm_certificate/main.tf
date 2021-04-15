resource "aws_acm_certificate" "acm_certificate" {

  domain_name               = var.domain_name
  subject_alternative_names = var.subject_alternative_names
  validation_method         = var.validation_method

  tags                      = var.tags

  lifecycle {
    prevent_destroy = true
  }
}
