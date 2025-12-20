resource "aws_instance" "vm" {
  #for_each = var.instance_name
  ami = var.ami_id
  #for_each = toset(var.instance_name)
  count = length(var.instance_name)
  #instance_type = each.value
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.Creating_allow_all_tls_security_group.id]
  #instance_type = var.environment == "dev"?"t3.micro":"t3.small"


  tags = {
    Name = "${var.instance_name[count.index]}.${var.domain_name}" # added interpolation here
  }
}

resource "aws_security_group" "Creating_allow_all_tls_security_group" {
  name        = "Creating_allow_all_tls_security_group"
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