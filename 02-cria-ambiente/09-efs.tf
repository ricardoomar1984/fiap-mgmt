resource "aws_efs_file_system" "efs" {
   creation_token = "efs"
   performance_mode = "generalPurpose"
   throughput_mode = "bursting"
   encrypted = "true"
 tags = {
     Name = "EFS-FIAP-MGMT-JENKINS"
   }
 }


resource "aws_efs_mount_target" "efs-mt" {
   file_system_id  = aws_efs_file_system.efs.id
   subnet_id = aws_subnet.subnet_public01.id
   security_groups = [aws_security_group.fiap-mgmt-efs-jenkins.id]
 }
