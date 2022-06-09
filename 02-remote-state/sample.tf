resource "aws_instance" "sample" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t2.micro"
  tags = {
    Name = "Test"
  }
}
terraform {
  backend "s3" {
    bucket = "terraform-devops55"
    key    = "sample/ terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform"
  }
}

provider "aws" {
  region = "us-east-1"
}


#

