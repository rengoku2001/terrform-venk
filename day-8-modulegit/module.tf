module "lassan" {
    source = "github.com/rengoku2001/terrform-venk/day-2-basiccode"
    ami = "ami-0614680123427b75e"
    instance_type = "t2.micro"
    key_name = "mumbai"
  
  
}