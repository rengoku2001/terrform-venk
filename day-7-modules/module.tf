module "test" {
    source = "../day-2-basiccode"
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
  
}