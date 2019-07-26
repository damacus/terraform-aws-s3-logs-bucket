resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"

  lifecycle_rule {
    id      = "AllLogs"
    enabled = true
    prefix  = "/"

    transition {
      days          = var.standard_ia_transition_days
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = var.glacier_transition_days
      storage_class = "GLACIER"
    }

    expiration {
      days = var.expiration
    }
  }

  tags = var.tags
}
