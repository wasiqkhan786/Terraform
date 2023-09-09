  resource "aws_s3_bucket_acl" "S3Bucket" {
    bucket = var.S3bucket
    acl    = "private"

  }
