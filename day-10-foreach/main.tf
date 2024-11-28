resource "aws_instance" "name" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    for_each = toset(var.iqoo)
    tags = {
      Name=each.value
}
}