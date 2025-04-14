terraform {
  backend "s3" {
    bucket = "venkatesh2001"
    region = "ap-south-1"
    key = "terraform.tfstate"
    encrypt = true
    use_lockfile = true
    
  }
}