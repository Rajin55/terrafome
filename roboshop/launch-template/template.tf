resource "aws_launch_template" "template" {
  name     = "template-for-roboshop"
  image_id = "ami-0bb6af715826253bf"
  instance_market_options {
    market_type = "spot"
  }
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0efa67d7efc0a9726"]
}
output "template_id" {
  value = "aws_launch_template.template.id"
}