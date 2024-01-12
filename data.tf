#data source for vpc id
data "aws_vpc" "vpc_id" {
  tags = {
    Name = "main"
  }
}