provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "bucket"{
  bucket = var.bucket_name
  acl    = var.bucket_acl

  versioning {
    enabled = var.versioning_enabled
  }
}
