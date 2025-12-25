resource "aws_instance" "vm" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.Creating_allow_all_tls_security_group.id]

  tags                   = {
    name = "${var.tags}-${var.environment}"
    Environment = var.environment
  }
}
resource "aws_security_group" "Creating_allow_all_tls_security_group" {
  name        = "${var.sg_name}-${var.environment}"
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
    name = "${var.sg_tags}-${var.environment}"
    Environment = var.environment
  }
}