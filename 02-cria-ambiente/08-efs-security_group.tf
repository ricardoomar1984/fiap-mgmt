resource "aws_security_group" "fiap-mgmt-efs-jenkins" {
  name        = "fiap-mgmt-efs-jenkins"
  description = "Access of Ingress"
  vpc_id      = aws_vpc.main.id
  #Copy and add rules that you want to your instance machine
  ingress {
    security_groups = [aws_security_group.security_group-fiap-mgmt.id]
    description = "NFS"
    from_port   = 2049
    to_port     = 2049
    protocol    = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
