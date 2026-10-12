resource "aws_instance" "ec2" {
  ami                    = data.aws_ami.roboshop_ami.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name    = "Terraform-Practice"
    Project = "Roboshop"
    Env     = "Dev"
  }

}



resource "aws_security_group" "allow_all" {

  name        = "allow_terraform"
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #all traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "allow_terraform"
    Project = "Roboshop"
    Env     = "Dev"
  }

}