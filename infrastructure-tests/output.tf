output "public_ip" {
    description = "public IP address of the web server"
    value = aws_instance.server.public_ip
}

output "instance_name" {
    description = "Name of the Instance"
    value = aws_instance.server.tags.Name
}

output "availability_zone" {
    description = "Availability Zone "
    value = aws_instance.server.availability_zone
}

output "instance_type" {
    description = "Instance Type "
    value = aws_instance.server.instance_type
}

output "instance_state" {
    description = "Instance State "
    value = aws_instance.server.instance_state   
}

output "security_groups" {
    description = "Security Groups "
    value = aws_instance.server.security_groups   
}

output "tenancy" {
    description = "Tenancy Name "
    value = aws_instance.server.tenancy   
}

output "subnet_id" {
    description = "Instance Type "
    value = aws_instance.server.subnet_id   
}
