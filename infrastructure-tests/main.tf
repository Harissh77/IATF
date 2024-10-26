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

resource "aws_instance" "create_instance" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  
  tags = {
    Name = format("IATF-Instance-%s", var.instance_name)
  }

}

 
