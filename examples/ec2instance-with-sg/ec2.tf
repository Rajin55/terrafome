resource "aws_instance" "sample" {
  ami           = "ami-0bb6af715826253bf" # us-west-2
  instance_type = "t2.micro"
}

//provider "aws" {
 // region = "us-east-1"
//}