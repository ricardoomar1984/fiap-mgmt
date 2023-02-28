resource "aws_subnet" "subnet_public01" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.cidr_subnet01
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone1
  tags = {
    Environment = var.fiap-mgmt_tag
    Name = "subnet01-fiap-mgmt"

  }
}

resource "aws_subnet" "subnet_public02" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.cidr_subnet02
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone2
  tags = {
    Environment = var.fiap-mgmt_tag
    Name = "subnet02-fiap-mgmt"

  }
}
