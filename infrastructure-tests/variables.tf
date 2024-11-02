variable "instance_type" {
  description = "AWS instance type for spinning up a new instance "
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  default = "IATF-Instance-1231231231234"
}

variable "ami_id" {
    description = "AWS Image ID "
    type = string
    default = "ami-04a37924ffe27da53"
}
variable "server_port" {
  description = "Server uses this port for http requests"
  type = number
  default = 80
}

variable "ssh_port" {
  description = "ssh port"
  type = number
  default = 22
}

variable "availability_zone" {
  default = "ap-south-1a"
}
