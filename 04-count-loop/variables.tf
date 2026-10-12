variable "ami_id" {
  type = string
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  type = string
  default = "t3.micro"

  validation {
    condition = contains(["t3.micro", "t3.small", "t3.medium", "t3.large"], var.instance_type)
    error_message = "Instance type should be either t3.micro or t3.small"
  }
}

variable "project" {
  default = "Roboshop"

}

variable "environment" {
  default = "Prod"
}


# variable "instances" {
#   type = list
#   default =  ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
# }

variable "instances" {
  type = list
  default =  ["mongodb","frontend"]
}



variable "port" {
  default = "0"
}

variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]

}

variable "zone_id" {
  default = "Z013848425Y3EH8LFWBC3"
}

variable "domain_name" {
  default = "devaradevops.online"
}
