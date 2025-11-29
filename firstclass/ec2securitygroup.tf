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