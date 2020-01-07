# Dirty-Deeds-Done-Dirt-Cheap
Prod Server on Digital Ocean

terraform init
terraform plan -var-file="env/keys.tfvars" -var-file="env/project.tfvars"
terraform apply -var-file="env/keys.tfvars" -var-file="env/project.tfvars"
