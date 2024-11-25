#public ec2
resource "aws_instance" "pubec2" {
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
    subnet_id = aws_subnet.pubsub.id
    vpc_security_group_ids = [ aws_security_group.mysg.id ]
    associate_public_ip_address = true
    tags = {
      Name="public"
    }
  
}

#pvt ec2
resource "aws_instance" "pvtec2" {
    ami = "ami-0614680123427b75e"
    key_name = "mumbai"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.pvtsub.id
    vpc_security_group_ids = [ aws_security_group.mysg.id ]
    associate_public_ip_address = false
    tags = {
      Name="private"
    }

  
}