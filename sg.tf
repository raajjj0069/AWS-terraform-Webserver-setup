#create security group
resource "aws_security_group" "all-in-one" {
    vpc_id = aws_vpc.prathmesh-vpc.id

# inbound rules
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

#outbond rules
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1" # enable for all route
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "ALL-IN-ONE"
    }
  
}
