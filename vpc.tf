#create vpc
resource "aws_vpc" "prathmesh-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "prathmesh-vpc" 
  }
}
#create subnet
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.prathmesh-vpc.id
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
   vpc_id = aws_vpc.prathmesh-vpc.id
   cidr_block = "10.0.1.0/24"
   tags = {
     Name = "private_subnet"
   }
}

resource "aws_internet_gateway" "prathmesh-igw" {
  vpc_id = aws_vpc.prathmesh-vpc.id
  tags = {
    Name = "prathmesh-igw"
  }
}
#create rt
resource "aws_route_table" "prathmesh-rt" {
  vpc_id = aws_vpc.prathmesh-vpc.id
  tags = {
    Name = "prathmesh-rt"
  }
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.prathmesh-igw.id
  }
}
resource "aws_route_table_association" "public-sub" {
  route_table_id = aws_route_table.prathmesh-rt.id
  subnet_id = aws_subnet.public_subnet.id
  
}
