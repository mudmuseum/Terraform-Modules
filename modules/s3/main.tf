resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket

  logging {
    target_bucket = var.logging_target_bucket
    target_prefix = var.logging_target_prefix
  }

  lifecycle_rule {
    id                                     = var.lifecycle_id
    enabled                                = var.enabled
    abort_incomplete_multipart_upload_days = var.abort_incomplete_multipart

    expiration {
      days                         = var.expiration_days
      expired_object_delete_marker = var.expired_object_delete_marker
    }

    noncurrent_version_expiration {
      days = var.noncurrent_days
    }
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  lifecycle {
    prevent_destroy = true
  }

  force_destroy = var.force_destroy
}
