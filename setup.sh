#!/bin/sh

cat <<EOF >terraform/env/keys.tfvars
token = "<Insira a chave de sua api na Digital Ocean>"
ssh_key_file = "../credentials/id_rsa.pub"
EOF

ssh-keygen -t rsa -b 4096 -f ${PWD}/credentials/id_rsa -q
