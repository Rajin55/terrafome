variable "fruits" {
  default = ["apple","banana","mango"]
}
output "number_of_fruits" {
  value = length(var.fruits)
}