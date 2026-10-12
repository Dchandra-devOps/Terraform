variable "ami_id" {
  default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
  default = "t3.micro"



validation {
  condition = contains(["t3.micro","t3.small", "t3.medium", "t3.large"],var.instance_type)
  error_message = "Instance type should be either t3.micro or t3.small"
}

}

variable "instance_tags" {
  type = map
 default = {
  Name = "EC2"
  Project ="Roboshop"
  Env = "Dev"
 }
}

variable "sg_name" {
  default = "ALLOW_ALL"
}
variable "sg_tags" {
  type = map
 default = {
  Name = "ALLOW_ALL"
  Project ="Roboshop"
  Env = "Dev"
 }
}

/* prefernce
=========

1. cmd
2. terraform.tfvars
3. env variables -> export TF_VAR_<var_name>="value"
   EX: $ export TF_VAR_instance_type="t3.small"

4. default
5. prompt */


# you set the value in your Linux environment first. Terraform automatically reads it when you run the command.

# The exported value remains available to subsequent commands in that shell until you change or unset it, or close the shell.