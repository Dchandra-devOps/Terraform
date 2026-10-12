#resource blocks are are used to create services/resources inside provider platform. 
#We can use data sources to query the existing information in provider

data "aws_ami" "roboshop_ami" {
  most_recent      = true

  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }


}

output "data" {
  value = data.aws_ami.roboshop_ami.id
}