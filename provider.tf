
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
      version = "~> 0.32.1"
    }
  }
}

provider "tfe" {
  # Configuration options
  token = var.tf_token
}
