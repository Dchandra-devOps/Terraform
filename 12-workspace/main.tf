resource "aws_instance" "ec2" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          =lookup(var.instance_type,local.environment)
  vpc_security_group_ids = [aws_security_group.allow_all.id]
  tags = {
    Name    = "${var.project}-${local.environment}-workspace"
    Project = "Roboshop"
    Env     = local.environment
  }

}



resource "aws_security_group" "allow_all" {

  name        = "${var.project}-${local.environment}-workspace"
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress  {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #all traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "${var.project}-${local.environment}-workspace"
    Project = "Roboshop"
    Env     = local.environment
  }

}