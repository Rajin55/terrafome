resource "aws_instance" "sample" {
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t2.micro"
  tags = {
    Name = "Test"
  }
}

provider "aws" {
    region = "us-east-1"
}
