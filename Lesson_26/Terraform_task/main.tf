resource "aws_launch_template" "ACATemplate" {
  name_prefix   = "ACATemplate"
  image_id      = "ami-0b5eea76982371e91"
  instance_type = var.instance_type
  user_data     = filebase64("${path.module}/init.sh")
  #security_groups = [aws_security_group.ACA-test.id]
  vpc_security_group_ids = [aws_security_group.ACA-test.id]
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "test"
    }
  }
}

resource "aws_autoscaling_group" "bar" {
  #availability_zone = var.availability_zone
  #availability_zone2 = var.availability_zone2
  desired_capacity    = 2
  max_size            = 3
  min_size            = 2
  vpc_zone_identifier = [aws_subnet.ACA-subnet1.id, aws_subnet.ACA-subnet2.id]
  launch_template {
    id      = aws_launch_template.ACATemplate.id
    version = "$Latest"
  }
}