resource "aws_lb" "main" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  #security_groups    = [aws_security_group.lb_sg.id]
  subnets            = var.subnets

  enable_deletion_protection = var.enable_deletion_protection



  tags = {
    Name = var.name
    Environment = "production"
  }
}

#security group to allow traffic
resource "aws_security_group" "main" {
  name        = "${var.name}-${var.env}"
  description = "${var.name}-${var.env}"
  vpc_id      = data.aws_vpc.vpc_id.id

  ingress {
    description      = "http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = var.cidr_block

  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.name}-${var.env}"
  }
}
