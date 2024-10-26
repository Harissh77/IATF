terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  profile = "iatf"
}

variable "instance_name" {
type = string
}


variable "services" {
  type = map(object({
    node = string
    kind = string
  }))
  description = "List of services and their metadata"
}
 
variable "service_kind" {
  type        = string
  description = "Service kind to search"
}
 
locals {
  ip_addresses = toset([
    for service, service_data in var.services :
    replace(replace(split(".", service_data.node)[0], "ip-", ""), "-", ".") if service_data.kind == var.service_kind
  ])
}

resource "aws_instance" "create_instance" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  
  tags = {
    Name = format("IATF-Instance-%s", var.instance_name)
  }

}

 
resource "local_file" "ip_addresses" {
  content  = jsonencode(local.ip_addresses)
  filename = "./${var.service_kind}.hcl"
}