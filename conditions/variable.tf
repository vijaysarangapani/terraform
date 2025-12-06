variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "AMIAMI ID of join devops RHEL9_for Terraform practice"
}
variable "instance_type" {
  default = "t2.micro"
}
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