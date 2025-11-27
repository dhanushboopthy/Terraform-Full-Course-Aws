terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-state-dhanush-12345"   
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "backend" {
  bucket = "test-remote-backend-dhanush-day04"

  tags = {
    Name        = "Test Backend Bucket"
    Environment = "dev"
  }
}
