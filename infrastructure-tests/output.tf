output "public_ip" {
    description = "public IP address of the web server"
    value = aws_instance.server.public_ip
}