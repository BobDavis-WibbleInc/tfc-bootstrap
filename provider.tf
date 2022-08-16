
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "wibble" # Variable not allowed here 
    workspaces {
      name = "tfc-bootstrap"
    }
  }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.35.0"
    }
  }
}

provider "tfe" {
  token = var.tf_token
}
