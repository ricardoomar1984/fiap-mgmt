resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    "Environment" = "${var.fiap-mgmt_tag}"
    "Name" = "fiap-mgmt-igw"

  }

}
