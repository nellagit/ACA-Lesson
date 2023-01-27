resource "aws_security_group" "ACA-test" {
  name        = "ACA Security Group"
  description = "Security Group for ALB"
  vpc_id      = aws_vpc.ACA-vpc.id
  # Inbound Rules
  # HTTP access from anywhere
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}