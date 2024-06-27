terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "=3.42.0"
    }
  }
}

provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "jane" {
  bucket = "jane-bucket-1234567"

  tags = {
    Name        = "jane-bucket"
  }
}
