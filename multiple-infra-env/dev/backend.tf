terraform {
  backend "s3" {
    bucket       = "hclsreeja"                                #bucket name s3
    key          = "hclsreeja-sreeja-terraform-s3-bucket-dev" #User Freindly name key
    region       = "us-east-1"                                #region
    encrypt      = true
    use_lockfile = true
  }
}