# variables.tf

variable "region" {
  description = "The AWS region"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "acl" {
  description = "The Access Control List for the S3 bucket"
  type        = string
}
