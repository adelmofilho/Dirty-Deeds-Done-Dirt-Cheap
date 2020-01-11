#!/bin/sh

cd terraform/

terraform_dir=`which terraform`

ip=`$terraform_dir output instance_ip_address`

echo $ip

cd ../

ssh root@$ip -i ${PWD}/credentials/id_rsa
