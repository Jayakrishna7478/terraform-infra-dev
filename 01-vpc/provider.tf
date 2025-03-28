terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "aws-state-dev-1"
     key    = "vpc"
     region = "us-east-1"
     #for state locking, LockID
     dynamodb_table = "aws-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}