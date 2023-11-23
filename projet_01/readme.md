https://dev.to/aws-builders/how-to-install-terraform-on-aws-cloudshell-5had

git clone https://github.com/tfutils/tfenv.git ~/.tfenv

mkdir ~/bin

ln -s ~/.tfenv/bin/* ~/bin/

tfenv install 1.2.5

tfenv use 1.2.5

mkdir terraform

cd terraform/

mkdir projet_01

cd projet_01

nano main.tf


       provider "aws" {
            region = "eu-west-3"
    }
    
    resource "aws_instance" "example" {
     ami            = "ami-0302f42a44bf53a45"
     instance_type  = "t2.micro"
    }
    
terraform init

terraform plan

terraform apply

terraform detroy


Lucas LONGOBARDI
