#vpc
resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name="projectv-vpc"
    }
  
}

#ig and attach
resource "aws_internet_gateway" "myig" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
      Name="projectv-ig"
    }
  
}

#public subnet
resource "aws_subnet" "pubsub" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name="pubsubnet"
    }
  
}

#pvt subnet
resource "aws_subnet" "pvtsub" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.1.0/24"
    tags = {
      Name="pvtsubnet"
    }
  
}

#eip
resource "aws_eip" "myeip" {
    vpc = true
}

#nat gateway
resource "aws_nat_gateway" "mynat" {
    allocation_id = aws_eip.myeip.id
    subnet_id = aws_subnet.pubsub.id
    tags = {
      Name="projectnat"
    }
  
}

#public rt
resource "aws_route_table" "pubrt" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
      Name="publicroute"
    }
    route {
        gateway_id = aws_internet_gateway.myig.id
        cidr_block = "0.0.0.0/0"
    }
  
}

#pvt rt
resource "aws_route_table" "pvtrt" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
      Name="pvtroute"
    }
    route {
        nat_gateway_id = aws_nat_gateway.mynat.id
        cidr_block = "0.0.0.0/0"
    }
  
}

#pub association
resource "aws_route_table_association" "pubass" {
    route_table_id = aws_route_table.pubrt.id
    subnet_id = aws_subnet.pubsub.id
  
}

#pvt association
resource "aws_route_table_association" "pvtass" {
    route_table_id = aws_route_table.pvtrt.id
    subnet_id = aws_subnet.pvtsub.id
  
}

#security group
resource "aws_security_group" "mysg" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
      Name="projectsg"
    }
    ingress {
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
  
}