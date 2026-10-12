resource "aws_route53_record" "roboshop" {
  count   = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop[count.index].private_ip]
}


resource "aws_route53_record" "froentend" {
  count   = contains(var.instances, "froentend") ? 1 : 0
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop[index(var.instances, "frontend")].public_ip]
}


