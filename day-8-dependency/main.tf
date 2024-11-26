resource "aws_instance" "name" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
    depends_on = [ aws_s3_bucket.name ]
  
  
}

resource "aws_s3_bucket" "name" {
    bucket = "taylorswift123"
    
  
}