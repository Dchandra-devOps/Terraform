ami_id ="ami-0220d79f3f480ecf5"
instance_type ="t3.micro"
instance_tags={
  Name = "EC2"
  Project ="Roboshop"
  Env = "Dev"
}

sg_tags = {
  Name = "ALLOW_ALL"
  Project ="Roboshop"
  Env = "Dev"
}

sg_name = "dev_sg"