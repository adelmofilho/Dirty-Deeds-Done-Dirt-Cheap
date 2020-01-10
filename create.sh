#!/bin/bash

cd terraform

terraform init
terraform plan -var-file="env/keys.tfvars" -var-file="env/project.tfvars" -var-file="env/provider.tfvars" -out="out/output.tfplan"
yes | terraform apply "out/output.tfplan"

