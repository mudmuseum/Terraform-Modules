variable "bucket_region_domain_name" {
  description = "The Bucket Domain Name association for CloudFront."
}

variable "cloudfront_is_enabled" {
  description = "Boolean for whether cloudfront distribution is enabled."
  default     = true
}

variable "cloudfront_is_ipv6_enabled" {
  description = "Boolean for whether cloudfront distribution is ipv6 enabled."
  default     = true
}

variable "cloudfront_logging_bucket" {
  description = "Bucket for where to log CloudFront requests."
}

variable "cloudfront_logging_include_cookies" {
  description = "Boolean to determine whether cookies are included in logging."
  default     = false
}

variable "cloudfront_logging_prefix" {
  description = "Logging prefix for logs delivered to S3 logging bucket for CloudFront."
}

variable "cloudfront_viewer_protocol_policy" {
  description = "Viewer protocol policy for CloudFront."
  default     = "redirect-to-https"
}

variable "cloudfront_price_class" {
  description = "The price class for CloudFront distribution."
  default     = "PriceClass_100"
}

variable "cloudfront_min_ttl" {
  description = "Minimum TTL for the CloudFront distribution."
  default     = "0"
}

variable "cloudfront_default_ttl" {
  description = "Default TTL for the CloudFront distribution."
  default     = "0"
}

variable "cloudfront_restriction_type" {
  description = "Restriction type for the geo restriction for the CloudFront distribution."
  default     = "none" 
}

variable "cloudfront_comment" {
  description = "Comment associated to the CloudFront Distribution."
  default     = "Managed by Terraform"
}

variable "cloudfront_cache_policy_id" {
  description = "CloudFront Cache Policy resource ID for the CloudFront Distritubion."
}

variable "cloudfront_default_root_object" {
  description = "Default root object that's accessed by the CloudFront Distribution."
  default     = "index.html"
}

variable "cloudfront_cache_allowed_methods" {
  description = "Cache configuration for allowed methods for the CloudFront Distribution."
  default     = ["GET", "HEAD"]
}

variable "cloudfront_cache_cached_methods" {
  description = "Cache configuration for cached methods for the CloudFront Distribution."
  default     = ["GET", "HEAD"]
}

variable "cloudfront_aliases" {
  description = "Aliases for the domain that the CloudFront Distribution is configured for."
}

variable "cloudfront_origin_origin_id" {
  description = "A unique identifier for an origin."
}

variable "acm_certificate_arn" {
  description = "ACM Certificate ARN for CloudFront Distribution."
}

variable "minimum_protocol_version" {
  description = "Minimum version for TLS for the AWS Certificate Manager certificate in CloudFront."
  default     = "TLSv1.2_2019"
}

variable "ssl_support_method" {
  description = "SSL Support Method, e.g. sni-only."
  default     = "sni-only"
}

variable "origin_access_identity_cloudfront_path" {
  description = "The CloudFront Path value of the Origin Access Identity."
}
