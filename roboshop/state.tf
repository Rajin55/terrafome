terraform {
  backend "s3" {
    bucket = "terraform-devops55"
    key    = "roboshop/ terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform"
  }
}