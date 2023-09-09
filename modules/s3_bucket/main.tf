  resource "aws_s3_bucket" "S3Bucket" {
    bucket = var.S3bucket
    acl    = "private"
    # Other S3 bucket settings
  }
