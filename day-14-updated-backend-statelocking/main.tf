provider "aws" {
  
}

resource "aws_instance" "name" {
    ami = "ami-05c179eced2eb9b5b"
    instance_type = "t2.micro"
    key_name = "mumbaikey"
    tags = {
      Name = "bhaibolthey"
    }

}