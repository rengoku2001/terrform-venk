variable "create_instance" {
  description = "Set to true to create the EC2 instance."
  type        = bool
  default     = false
}


resource "aws_instance" "example" {
  count         = var.create_instance ? 1 : 0
  ami           = "ami-0614680123427b75e" # Replace with a valid AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "Condition-based-Instance"
  }
}