resource "aws_route53_record" "https" {
  count = 3
  zone_id = var.zone_id
  name    = "${var.instance_name[count.index]}.${var.domain_name}" # adding DNS and Public IP mysql.sreeja.site
  type    = "A"
  ttl     = 1
  records = [aws_instance.vm[count.index].private_ip]
}