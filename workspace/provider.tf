terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.21.0"
    }
  }
  backend "s3" {
    bucket       = "hclsreeja"                                      #bucket name s3
    key          = "hclsreeja-sreeja-terraform-s3-bucket-workspace" #User Freindly name key
    region       = "us-east-1"                                      #region
    encrypt      = true
    use_lockfile = true
    #dynamodb_table = "sreeja-remote-state" #table name
  }
}
provider "aws" {
  region = "us-east-1"
}