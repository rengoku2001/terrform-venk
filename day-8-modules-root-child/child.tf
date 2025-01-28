module "test" {
    source = "./modules/ec2" 
    ami       	= "ami-0b7207e48d1b6c06f"
    instance_type = "t2.micro"
    subnet_id 	= "subnet-0a4c7cf2773251921"
    key_name  	= "mumbai"
    name        = "test_ec2"
}