output "cloudfront_distribution_id" {
  description = "The CloudFront Distribution ID."
  value       = aws_cloudfront_distribution.cloudfront_distribution
}
