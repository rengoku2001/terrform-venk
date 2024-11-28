provider "aws" {
  
}

resource "aws_instance" "apple" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
  
}

resource "aws_s3_bucket" "andriod" {
    bucket = "luckybaskar"
  
}