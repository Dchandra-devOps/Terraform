terraform {
  backend "s3" {
    bucket = "roboshop111" 
    key    = "practice_workspace"
    region = "us-east-1"
    encrypt        = true
    use_lockfile   = true # Enables native S3 state locking (Terraform 1.10+)
  }
}