output "arn" {
  description = "ACM Certificate ARN."
  value       = aws_acm_certificate.acm_certificate.arn
}
