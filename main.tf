resource "aws_lb" "main" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  #security_groups    = [aws_security_group.lb_sg.id]
  subnets            = [var.subnets]

  enable_deletion_protection = var.enable_deletion_protection



  tags = {
    Name = var.name
    Environment = "production"
  }
}