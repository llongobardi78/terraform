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
  private     = false
}