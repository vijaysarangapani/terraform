resource "aws_route53_record" "https" {
  for_each = aws_instance.vm
  #count = 3
  zone_id = var.zone_id
  name = "${each.key}.${var.domain_name}" # adding DNS and Public IP mysql.sreeja.site using for loop it uses key and value pair
  #name    = "${var.instance_name[count.index]}.${var.domain_name}" # adding DNS and Public IP mysql.sreeja.site
  type    = "A"
  ttl     = 1
  #records = [aws_instance.vm[count.index].private_ip]
  records = [ each.value.private_ip ]
}