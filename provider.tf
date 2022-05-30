terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "wibble"

    workspaces {
      name = "tfc-bootstrap"
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
  token = var.tf_token
}
