resource "aws_cloudfront_distribution" "cloudfront_distribution" {

  origin {
    domain_name = var.bucket_regional_domain_name
    origin_id   = var.cloudfront_origin_origin_id
    s3_origin_config {
      origin_access_identity = var.origin_access_identity_cloudfront_access_identity_path
    }
  }

  enabled             = var.cloudfront_is_enabled
  is_ipv6_enabled     = var.cloudfront_is_ipv6_enabled
  comment             = var.cloudfront_comment
  default_root_object = var.cloudfront_default_root_object

  logging_config {
    include_cookies = var.cloudfront_logging_include_cookies
    bucket          = var.cloudfront_logging_bucket
    prefix          = var.cloudfront_logging_prefix
  }

  aliases = var.cloudfront_aliases

  default_cache_behavior {
    allowed_methods  = var.cloudfront_cache_allowed_methods
    cached_methods   = var.cloudfront_cache_cached_methods
    target_origin_id = var.cloudfront_origin_origin_id
    cache_policy_id  = var.cloudfront_cache_policy_id

    viewer_protocol_policy = var.cloudfront_viewer_protocol_policy
    min_ttl                = var.cloudfront_min_ttl
    default_ttl            = var.cloudfront_default_ttl
  }

  price_class = var.cloudfront_price_class

  restrictions {
    geo_restriction {
      restriction_type = var.cloudfront_restriction_type
    }
  }
  viewer_certificate {
    acm_certificate_arn      = var.acm_certificate_arn
    minimum_protocol_version = var.minimum_protocol_version
    ssl_support_method       = var.ssl_support_method
  }

  lifecycle {
    prevent_destroy = true
  }
}
