resource "aws_key_pair" "ssh-key-fiap-mgmt" {
  key_name   = "ssh-key-fiap-mgmt"
  public_key = var.ssh-key
}
