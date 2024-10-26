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
<<<<<<< HEAD


=======
>>>>>>> c9b5b4b8cf151b13bccf2abf9f6c4da458a352a0

resource "aws_instance" "create_instance" {
  ami           = "ami-04e914639d0cca79a"
  instance_type = "t2.micro"
  
  tags = {
    Name = format("IATF-Instance-%s", var.instance_name)
  }

}

<<<<<<< HEAD
 
=======
 
>>>>>>> c9b5b4b8cf151b13bccf2abf9f6c4da458a352a0
