resource "aws_route_table" "ACA-rout" {
  vpc_id = aws_vpc.ACA-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ACA-gateway.id

  }
  tags = {

    Name = "ACA ROUTE"
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.ACA-subnet.id
  route_table_id = aws_route_table.ACA-rout.id
}

