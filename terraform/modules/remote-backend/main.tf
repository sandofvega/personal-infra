# Create the S3 Bucket
resource "aws_s3_bucket" "tf_state" {
  bucket = var.bucket_name
  
  lifecycle {
    prevent_destroy = true
  }
}

# Block all public access to the S3 bucket
resource "aws_s3_bucket_public_access_block" "tf_state_restrict" {
  bucket = aws_s3_bucket.tf_state.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Enable Versioning on the S3 Bucket
resource "aws_s3_bucket_versioning" "tf_state_versioning" {
  bucket = aws_s3_bucket.tf_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Enable Server-Side Encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "tf_state_crypto" {
  bucket = aws_s3_bucket.tf_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
