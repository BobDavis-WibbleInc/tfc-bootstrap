
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
      version = "~> 0.32.1"
    }
  }
}

provider "tfe" {
  token = var.tf_token
}
