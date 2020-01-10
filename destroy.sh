#!/bin/bash

cd terraform

yes | terraform destroy -var-file="env/keys.tfvars" -var-file="env/project.tfvars" -var-file="env/provider.tfvars"


