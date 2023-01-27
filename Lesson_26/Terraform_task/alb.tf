resource "aws_lb" "web_alb" {
  name               = "test-lb-tf"
  internal           = false
  load_balancer_type = "application"

  security_groups = [
    aws_security_group.ACA-test.id
  ]
  subnets = [aws_subnet.ACA-subnet1.id, aws_subnet.ACA-subnet2.id]

}

resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.web_alb.arn
  port              = "80"
  protocol          = "HTTP"
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.ACA-alb.arn
  }

}

resource "aws_lb_target_group" "ACA-alb" {
  name        = "tf-ACA-lb-alb-tg"
  target_type = "instance"
  port        = 80
  protocol    = "HTTP"
  vpc_id      = aws_vpc.ACA-vpc.id
}

resource "aws_autoscaling_attachment" "example" {
  autoscaling_group_name = aws_autoscaling_group.bar.name
  alb_target_group_arn   = aws_lb_target_group.ACA-alb.arn
}