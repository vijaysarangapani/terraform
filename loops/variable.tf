variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "AMIAMI ID of join devops RHEL9_for Terraform practice"
}
variable "environment" {
  default = "dev"
}
#variable "instance_type" {
#  default = var.environment == "dev"?"t3.micro":"t3.small"
#}
variable "cidr_blocks" {
  default =  ["0.0.0.0/0"]
}
variable "ipv6_cidr_blocks" {
  default = ["::/0"]
}
variable "from_port" {
  default = 0
}
variable "to_port" {
  default = 0
}
variable "protocol" {
  default = "-1"
}
variable "common_tags" {
  default = {
    environment = "dev"
  }
}
variable "tags" {
  default = "sreejahost"
}
variable "instance_name"{
  default = ["mongodb", "redis", "mysql"]
}
variable "domain_name" {
  default = "sreeja.site"
}