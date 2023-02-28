resource "aws_vpc" "main" {
  cidr_block           = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Environment = var.fiap-mgmt_tag
    Name = var.fiap-mgmt_tag
  }

}
