output "name" {
  description = "Bucket name"
  value       = aws_s3_bucket.s3_bucket.id
}

output "bucket_regional_domain_name" {
  description = "Bucket Regional Domain name."
  value       = aws_s3_bucket.s3_bucket.bucket_regional_domain_name
}
