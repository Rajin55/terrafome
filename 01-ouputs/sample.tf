output "sample" {
  //value = "Hello World
  value = var.sample
}


output "sample1" {
  value = "${var.sample} Welcom you"
}

variable "sample" {
  default = "Hello WOrld"
}

## vaiable sample be accessed as var.sample or ${var.sample}
## ${var.sample} is used within quotes
## var.sample is used without qoutes

# Nuber data type

variable "sample2" {
  default = 100
}
output "sample2" {
  value = var.sample2
}
# Boolean Data type
variable "sample3" {
  default = true
}
output "sample3" {
  value = var.sample3
}

variable "sample4" {
  default = [
    "Hello",
    1000,
    true,
    "World"
  ]
}
output "sample4" {
  value = var.sample4[1]
}


