resource "aws_instance" "venk" {
    ami = "ami-0b7207e48d1b6c06f"    
    instance_type = "t2.micro"
    key_name = "mumbai"
  
}

resource "aws_s3_bucket" "lassan" {
    bucket = "hvjhsgxvjhsxh"
  
}

#use 'terraform state rm <resource name> ' command to remove state from statefile so that terraform won't control itcheck "name" 
# ex : terraform state rm aws_instance.venk
