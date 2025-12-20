variable "environment" {
  default = "dev"
}

variable "component" {
  default = "netc"
}
variable "common_tags" {
  default = {
    project   = "npci"
    Terraform = "true"
  }
}
variable "project" {
  default = "ncpi"
}