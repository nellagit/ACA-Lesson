resource "aws_vpc" "ACA-vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "ACA VPC"
  }
}