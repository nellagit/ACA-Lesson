resource "aws_subnet" "ACA-subnet1" {
  vpc_id                  = aws_vpc.ACA-vpc.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone1
  tags = {
    Name = "ACA subnet1"
  }
}
#Creating 2nd subnet 
resource "aws_subnet" "ACA-subnet2" {
  vpc_id                  = aws_vpc.ACA-vpc.id
  cidr_block              = var.subnet2_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone2
  tags = {
    Name = "ACA subnet 2"
  }
}