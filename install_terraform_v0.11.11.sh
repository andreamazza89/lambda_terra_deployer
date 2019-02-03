mkdir ./terraform_bin
cd ./terraform_bin
curl https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip --output ./terraform.zip
unzip terraform.zip
export PATH_TO_TERRAFORM_BIN="/$(pwd)/terraform"
cd /usr/bin
ln -s $PATH_TO_TERRAFORM_BIN terraform
