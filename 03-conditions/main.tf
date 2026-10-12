resource "aws_instance" "ec2" {
  count = 2
  ami                    = var.ami_id
  instance_type          = var.instance_name == "mongodb" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.roboshop.id]
  tags                   = var.instance_tags

}

resource "aws_security_group" "roboshop" {

  name        = var.sg_name
  description = "allow all TLS traffic "
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.sg_tags
}