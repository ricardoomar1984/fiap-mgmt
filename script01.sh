#!/bin/sh
#Gerando a chave SSH para o projeto
ssh-keygen -q -t rsa -N '' -f key-fiap-mgmt
KEY=`cat key-fiap-mgmt.pub`
export KEY_GENERATED_BY_SCRIPT="$KEY" && envsubst < ssh-key.tf.template > ssh-key.tf
cp ssh-key.tf  02-cria-ambiente/ssh-key.tf


#Criando Imagem do Jenkins No Packer
export LOCALDIR=$PWD
export PACKER_DIR=$PWD/01-criar-imagens-maquinas/
export TERRAFORM_DIR=$PWD/02-cria-ambiente/
$PACKER_DIR/script_packer.sh
