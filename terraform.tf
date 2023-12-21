terraform {
  required_version = ">=0.12.13"
  backend "s3" {
    bucket         = "ocr-backend-dev-states"
    key            = "terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "state-bucket-yolo"
    encrypt        = true
  }
}

# Download any stable version in AWS provider of 2.36.0 or higher in 2.36 train
provider "aws" {
  region  = "us-east-2"
  version = "~> 2.36.0"
}