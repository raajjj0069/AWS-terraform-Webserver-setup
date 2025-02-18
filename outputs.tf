output "public_ip" {
    description = "Show public ip"
    value = aws_instance.public_server.public_ip
  
}
