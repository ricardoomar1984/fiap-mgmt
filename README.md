EADME
Esse projeto tem o intuito de Criar um servidor Jenkins em uma estrutura de alta disponibilidade da AWS. dessa forma 
voce tem um ambiente de CI/CD monitorado. Posterior a instalação do Jenkins também é instalada uma estrutura que monitora o ambiente


Segue abaixo informações sobre infra escolhida:
Gerador de Imagens                 : Packer
Provedor                           : AWS
Ferramenta de automação de Provedor: Terraform
Configuraçções adicionais          : shell script

Abaixo comandos executados:

<<<<<<< HEAD
###################
#Instalando Packer#
###################

=======
##Instalando Packer##

Packer eh um gerador de imagens que se baseia em uma imagem previamente gerada e permite instalar novos pacotes e gerar uma nova imagem

para instalar :

#Adicionado o GPG Key da Hashicorp:
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

#Adicionando o repositorio da Hashicorp:
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

#Instalando packer
sudo apt-get update && sudo apt-get install packer


#######################
##Instalando terraform#
####################### 


sudo apt-get install wget unzip
wget https://releases.hashicorp.com/terraform/1.1.0/terraform_1.1.0_linux_amd64.zip
unzip terraform_1.1.0_linux_amd64.zip
sudo mv terraform /usr/local/bin/




####################################
## Instalar e configurar o AWS CLI #
####################################


curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
unzip awscli-bundle.zip
sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
=======

aws configure 
aws_access_key_id=<seu id>
aws_secret_access_key=<seu access key>



#################
# Rodar scripts # 
#################
./script01.sh
