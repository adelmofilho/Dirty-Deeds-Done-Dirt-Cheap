#!/bin/sh

cd terraform/
terraform init
terraform plan -var-file="env/keys.tfvars" -var-file="env/project.tfvars" -var-file="env/provider.tfvars" -out="out/output.tfplan"
terraform apply "out/output.tfplan"