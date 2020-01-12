#!/bin/sh

terraform_dir=`which terraform`

cd terraform/ && droplet_ip=`$terraform_dir output instance_ip_address`

ssh root@$droplet_ip -i ../credentials/id_rsa