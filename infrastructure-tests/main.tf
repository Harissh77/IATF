terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

locals {
  timestamp = "${timestamp()}"
  Formated = "${replace("${local.timestamp}", "/[-| |T|Z|:]/", "")}"
}

variable "AWS_CONFIG_FILE" { 
type= string 
default = "./config/config"
} 

variable "AWS_SHARED_CREDENTIALS_FILE" { 
type= string 
default = "./config/credentials"
} 

variable "instance_name" {
type = string
default = "pipeline"
}

resource "aws_instance" "server" {
  ami = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.instance.id ]
  availability_zone = var.availability_zone
  tags = {
    Name = ${var.instance_name}_${local.Formated}
  }
}



