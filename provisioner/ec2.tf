resource "aws_instance" "vm" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.Creating_allow_all_tls_security_group.id ]

  tags = {
    Name = "dxc"
  }
  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory"
  }
}

resource "aws_security_group" "Creating_allow_all_tls_security_group" {
  name = "Creating_allow_all_tls_security_group"
  description = "Creating_allow_all_tls_security_group"

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
   tags = {
        name = "Creating_allow_all_tls_security_group"
   } 
}