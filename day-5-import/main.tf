resource "aws_instance" "venk" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
  
}

#(terraform import aws_instance.venk i-0edae73e03f206ea2) used this to import whatever created manually.