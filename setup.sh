#!/bin/sh

cat <<EOF >terraform/env/keys.tfvars
/*
*   Personal access token
*   https://cloud.digitalocean.com/account/api/tokens
*/

token = "<Insira a chave de sua api na Digital Ocean>"
EOF

ssh-keygen -t rsa -b 4096 -f ${PWD}/credentials/id_rsa -q