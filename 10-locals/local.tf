locals {
  name = "${var.project}-${var.environment}"
  ami_id = "ami-0220d79f3f480ecf5"
  instance_type =  "t3.micro"

  commontags = {
    Name = "${var.project}-${var.environment}"
    Project = var.project
    Env = var.environment
  }

  ec2_tags = merge(
    local.commontags,
    {
      Name = "${local.name}-local-demo"
    }
  )


  sg_tags = merge(
    local.commontags,
    {
      Name = "${local.name}-local-demo"
    }
  )

  sg_name= "${local.name}-demo-sg"
}

