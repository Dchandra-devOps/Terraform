variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "instance_type" {
  default = "t3.micro"
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