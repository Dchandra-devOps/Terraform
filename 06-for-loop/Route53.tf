resource "aws_route53_record" "roboshop" {
 for_each = var.instances_type
  zone_id = var.zone_id
  name    = "${each.key}-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = each.key == "frontend" ? [aws_instance.roboshop[each.key].public_ip] : [aws_instance.roboshop[each.key].private_ip]
}


