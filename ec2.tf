#create ec2 server
resource "aws_instance" "public_server" {
  ami = "ami-01816d07b1128cd2d"
  instance_type = "t2.nano"
  tags = {
    Name = "Public_subnet"
  }
  subnet_id = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.all-in-one.id]
  associate_public_ip_address = true
  user_data = <<-EOF
                 #!/bin/bash
                 sudo yum update -y
                 sudo yum install nginx -y
                 sudo systemctl start nginx
                 sudo systemctl enable nginx

                 EOF
}

