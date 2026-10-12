output "ec2" {
  description = "ec2 details"
  value = aws_instance.roboshop
}


output "ec222" {
  description = "ec2 details"
  value = aws_instance.roboshop[*].private_ip
}
