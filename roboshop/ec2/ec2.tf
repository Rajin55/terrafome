resource "aws_instance" "cheap_worker" {
  count         =length(var.COMPONENTS)
  ami           = "ami-0bb6af715826253bf"
  instance_type = "t2.micro"
  tags = {
    Name        = element(var.COMPONENTS, count.index )
  }
}

variable "COMPONENTS" {}

//resource "time_sleep" "wait" {
 // depends_on = [aws_spot_instance_request.cheap_worker]
 // create_duration = "120s"
//}
//resource "" "" {}