resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/20"
  instance_tenancy = "default"

  tags = {
    Name = "main-vpc"
  }
}