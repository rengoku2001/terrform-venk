resource "aws_instance" "name" {
    ami = var.ami
    instance_type = var.instance_type
    count = length(var.apple)
    key_name = var.key_name
    tags = {
      Name = var.apple[count.index]
    }
  
}