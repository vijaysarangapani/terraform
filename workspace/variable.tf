variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
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
variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}
variable "ipv6_cidr_blocks" {
  default = ["::/0"]
}

variable "tags" {
  default = "dxc"
}
variable "sg_name" {
  default = "Creating_allow_all_tls_security_group"
}
variable "sg_description" {
  default = "Creating_allow_all_tls_security_group"
}
variable "sg_tags" {
  default = "Creating_allow_all_tls_security_group"
}
variable "instance_type" {
  default = {
    dev  = "t3.micro"
    prod = "t3.small"
  }
}

variable "instance_name" {
  default = ["mongodb", "redis", "mysql", "rabbitmq"]
}