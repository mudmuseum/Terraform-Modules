output "id" {
  description = "The Origin Access Identity ID value."
  value = aws_cloudfront_origin_access_identity.origin_access_identity.id
}

output "cloudfront_access_identity_path" {
  description = "The Origin Access Identity Path value."
  value = aws_cloudfront_origin_access_identity.origin_access_identity.cloudfront_access_identity_path
}
