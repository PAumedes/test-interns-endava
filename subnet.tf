resource "aws_subnet" "subnet-private-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Subnet Private 1"
  }
}

resource "aws_subnet" "subnet-private-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Subnet Private 2"
  }
}

resource "aws_subnet" "subnet-public-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Subnet Public 1"
  }
}

resource "aws_subnet" "subnet-public-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "Subnet Public 1"
  }
}