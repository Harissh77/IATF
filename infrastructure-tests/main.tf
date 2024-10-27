terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}



variable "AWS_CONFIG_FILE" { 
type= string 
default = "./config/config"
} 

variable "AWS_SHARED_CREDENTIALS_FILE" { 
type= string 
default = "./config/credentials"
} 
provider "aws" {
  region  = "ap-south-1"
}

variable "instance_name" {
type = string
default = "pipeline"
}


resource "aws_instance" "create_instance" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  
  tags = {
    Name = format("IATF-Instance-%s", var.instance_name)
  }

}
