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
    Name = "EC2-Server"
  }
  user_data = <<-EOF
                #!/bin/bash
	        sudo yum install python -y 
                sudo yum install pip -y 
                sudo python -m pip install pytest -y
                sudo yum update -y
                sudo yum install httpd -y
                sudo systemctl start httpd
                sudo systemctl enable httpd
                echo "Welcome to the IATF Demo !" > /var/www/html/index.html
                EOF
   user_data_replace_on_change = true 
}



