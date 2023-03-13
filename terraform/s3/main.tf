terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.58.0"
    }
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "devsecops-test-bucket-saac03"

  tags = {
    Name = "devsecops-test-bucket-saac03"
    Date = "03-13-2023"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.my_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.my_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}