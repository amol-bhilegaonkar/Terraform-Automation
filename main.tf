# main.tf

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = var.acl

  tags = {
    Name        = "MyBucket"
    Environment = "Development"
  }
}
