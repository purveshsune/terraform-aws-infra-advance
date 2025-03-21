terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.91.0"
    }
  }
  backend "s3" {
    bucket         = "purvesh-terraform-lock-bucket"
    key            = "."
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table" # Optional: For state locking
  }
}

provider "aws" {
  # Configuration options
  region = "eu-west-1"
}