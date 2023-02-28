packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.1"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

source "amazon-ebs" "ubuntu" {
  ami_name      = "fiap-mgmt-jenkins002"
  instance_type = "t2.micro"
  region        = "us-east-1"
  source_ami_filter {
    filters = {
      name                = "*ubuntu-jammy-22.04*"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["099720109477"]
  }
  ssh_username = "ubuntu"
}

build {
  name    = "learn-packer"
  sources = [
    "source.amazon-ebs.ubuntu"
  ]

  provisioner "shell" {
    environment_vars = [
      "FOO=hello world",
    ]
    inline = [
       "echo Instalando o Jenkins",
       "sudo add-apt-repository ppa:openjdk-r/ppa",
       "sudo apt update",
       "sudo apt install openjdk-11-jdk -y",
       "curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null",
       "echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/ | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null",
       "sudo apt update",
       "sudo apt install jenkins -y",
       "sudo systemctl status jenkins",
       "sudo systemctl enable --now jenkins",
       "sudo ufw allow 8080",
       "sudo ufw status",
       "sudo apt -y install git binutils",
      "git clone https://github.com/aws/efs-utils",
      "cd efs-utils",
      "./build-deb.sh",
      "sudo apt -y install ./build/amazon-efs-utils*deb",
    ]
  }
}
