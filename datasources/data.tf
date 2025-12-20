data "aws_ami" "joindevops" {
    filter {
      name = "name"
      values = ["RHEL-9-DevOps-Practice"]
    }
    filter {
    name   = "image-id"
    values = ["ami-09c813fb71547fc4f"]
  }
}
output "ami_id" {
  value = data.aws_ami.joindevops
}