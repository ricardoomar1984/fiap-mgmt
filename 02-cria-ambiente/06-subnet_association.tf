resource "aws_route_table_association" "rta_subnet_public" {
  subnet_id      = aws_subnet.subnet_public01.id
  route_table_id = aws_route_table.rtb_public.id
}

resource "aws_route_table_association" "rtb_subnet_public" {
  subnet_id      = aws_subnet.subnet_public02.id
  route_table_id = aws_route_table.rtb_public.id
}
