module "aws" {
    source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance"
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
  
}