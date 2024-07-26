resource "aws_s3_bucket" "bucket1" {
	bucket = "himanshug-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
    
}

provider "aws" {
    region = "eu-west-1"
}

terraform {
  backend "s3" {
    bucket         = "himanshug-s3bucket-20240726"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "himanshug-20240726-dblocks"
    encrypt        = true
  }
}
