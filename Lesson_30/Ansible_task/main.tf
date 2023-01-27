data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "My-ACA-instance" {
  count             = 3
  ami               = data.aws_ami.ubuntu.image_id
  instance_type     = var.instance_type
  key_name          = "aws-ssh"
  subnet_id         = aws_subnet.ACA-subnet.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  availability_zone = var.availability_zone
  tags = {
    Name = "My-ACA-instance-${count.index}"
  }
}

 