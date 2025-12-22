terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.21.0"
    }
  }
  backend "s3" {
    bucket = "hclsreeja"
    key = "hclsreeja-sreeja-terraform-s3-bucket" #User Freindly name
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "sreeja-remote-state"
  }
}
provider "aws" {
  region = "us-east-1"
}