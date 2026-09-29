terraform {
  backend "s3" {
    bucket       = "deepan-mod-3.1"
    key          = "sample-directory/terraform"
    region       = "us-east-1"
  }
}

provider "aws" {
   region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "deepan-gha-sample-"
  tags = {
    Purpose = "github-actions-workshop"
  }
}
