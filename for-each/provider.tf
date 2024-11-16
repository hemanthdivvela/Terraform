terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.1"
    }
  }

      backend "s3" {
      bucket = "hemanth78s-remote-state"
      key    = "expense-for-loop"
      region = "us-east-1"
      dynamodb_table = "hemanth78s-locking"
      }
    

  
}

provider "aws" {
    region = "us-east-1"
}