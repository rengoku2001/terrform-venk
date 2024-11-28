variable "ami" {
    type = string
    default = ""
  
}

variable "instance_type" {
    type = string
    default = ""
  
}

variable "key_name" {
    type = string
    default = ""
  
}
variable "iqoo" {
    type = list(string)
    default = [ "bg","sg" ]  
}