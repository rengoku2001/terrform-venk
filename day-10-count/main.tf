resource "aws_instance" "name" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    count = length(var.apple)
    tags = {
        Name=var.apple[count.index]
    }
  
}