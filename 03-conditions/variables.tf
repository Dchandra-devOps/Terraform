variable "ami_id" {
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  default = "t3.micro"



  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium", "t3.large"], var.instance_type)
    error_message = "Instance type should be either t3.micro or t3.small"
  }

}

variable "instance_name" {
  type    =  string
  default = "mongodb"
}

variable "instance_tags" {
  type = map(any)
  default = {
    Name    = "EC2"
    Project = "Roboshop"
    Env     = "Dev"
  }
}

variable "sg_name" {
  default = "ALLOW_ALL"
}
variable "sg_tags" {
  type = map(any)
  default = {
    Name    = "ALLOW_ALL"
    Project = "Roboshop"
    Env     = "Dev"
  }
}