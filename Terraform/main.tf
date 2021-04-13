terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "cloudskillsckbucket" {
    bucket = var.bucket_name
    acl = var.acl

    tags = {
        Name = var.bucket_name
        Environment = "website"
    }
}