resource "aws_instance" "vm" {
  ami = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "sreejahost"
  }
}
resource "aws_security_group" "Creating_allow_all_tls_security_group" {
  name = "Creating_allow_all_tls_security_group"
  description = "Creating_allow_all_tls_security_group"

  ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }
  egress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_blocks
    ipv6_cidr_blocks = var.ipv6_cidr_blocks
  }
   tags = {
        name = "Creating_allow_all_tls_security_group"
   } 
}