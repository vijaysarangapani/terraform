resource "aws_instance" "vm" {
  ami                    = var.ami_id
  instance_type          = lookup(var.instance_type, terraform.workspace)
  count                  = length(var.instance_name)
  vpc_security_group_ids = [aws_security_group.Creating_allow_all_tls_security_group.id]

  tags = {
    Name        = "${var.tags}-${terraform.workspace}-${var.instance_name[count.index]}"
    Environment = terraform.workspace
  }
}
resource "aws_security_group" "Creating_allow_all_tls_security_group" {
  name        = "${var.sg_name}-${terraform.workspace}"
  description = var.sg_description

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
    Name        = "${var.sg_tags}-${terraform.workspace}"
    Environment = terraform.workspace
  }
}