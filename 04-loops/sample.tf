resource "aws_instance" "sample" {
  count         = 2
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t2.micro"
}

provider "aws" {
  region = "us-east-1"
}