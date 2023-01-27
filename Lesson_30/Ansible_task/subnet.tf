resource "aws_subnet" "ACA-subnet" {
  vpc_id                  = aws_vpc.ACA-vpc.id
  cidr_block              = var.subnet_cidr
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone
  tags = {
    Name = "ACA subnet"
  }
}

