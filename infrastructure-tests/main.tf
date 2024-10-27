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
  ami           = "ami-04a37924ffe27da53"
  instance_type = "t2.micro"

  tags = {
    Name = format("IATF-Instance-%s", var.instance_name)
  }
  user_data = <<-EOF
                #!/bin/bash
                sudo yum install python -y
                sudo yum install pip -y
                sudo python -m pip install pytest -y 
                echo "Terraform is easy!!!" > /var/www/html/index.html
                EOF
   user_data_replace_on_change = true 

}
