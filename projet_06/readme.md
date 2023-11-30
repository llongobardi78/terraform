
**telechargement terraform** 
https://developer.hashicorp.com/terraform/install?product_intent=terraform

**configurer un tocken github**
profiles->settings->Developer Settings->Personal access tokens (classic)->New personal access token (classic)

**creation repo github**

    provider "github" {
      token = "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"
    }
    
    resource "github_repository" "projet" {
      name        = "projet_6"
      description = "Créé avec Terraform"
      private     = true
    }

terraform init
terraform plan
terraform apply

**repo bien créer** 

terraform destroy


**création repo avec variable**

    variable "nom_du_repo" {
      description = "Nom du dépôt GitHub"
      type        = string
    }
    
    provider "github" {
      token = "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"
    }
    
    resource "github_repository" "mon_repo" {
      name        = var.nom_du_repo
      description = "Créé avec Terraform"
      private     = true
    }

**script python**

    import subprocess
    import sys

    nom_du_repo = sys.argv[1]

    subprocess.run(['terraform', 'apply', '-var', f'nom_du_repo={nom_du_repo}'])

python terraform.py hello85

terraform init
terraform plan
terraform apply

terraform destroy
