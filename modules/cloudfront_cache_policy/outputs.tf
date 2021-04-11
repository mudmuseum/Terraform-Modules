output "id" {
  description = "CloudFront Cache Policy ID value used with CloudFront Distribution."
  value       = aws_cloudfront_cache_policy.cloudfront_cache_policy.id
}
