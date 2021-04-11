output "id" {
  description = "The Origin Access Identity ID value."
  value = aws_cloudfront_origin_access_identity.origin_access_identity.id
}
