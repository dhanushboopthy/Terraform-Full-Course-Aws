terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "demo_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "demo-vpc"
  }
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket        = "tf-practise-day03-dhanush"
  force_destroy = true

  tags = {
    Name        = "demo-bucket"
    Environment = "Dev"
  }
}