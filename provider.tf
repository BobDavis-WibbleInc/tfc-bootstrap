terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "wibble"
    token        = "ot-6172QnkrWpoNQG87"
    workspaces {
      name = "bootstrap"
    }
  }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.31.0"
    }
  }
}

provider "tfe" {
}
