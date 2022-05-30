
terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.31.0"
    }
    # azuread = {
    #   source  = "hashicorp/azuread"
    #   version = "~> 2.11.0"
    # }
    # azurerm = {
    #   source  = "hashicorp/azurerm"
    #   version = "~> 2.90.0"
    # }
    # aws = {
    #   source  = "hashicorp/aws"
    #   version = "~> 3.70.0"
    # }
  }
}

provider "tfe" {
  # Configuration options
  token = var.tf_token
}

# provider "azuredevops" {
#   # Configuration options
#   org_service_url       = "https://dev.azure.com/${var.azuredevops_settings.organization}"
#   personal_access_token = var.azuredevops_personal_token
# }

# provider "azuread" {
#   # Configuration options
#   tenant_id     = var.azuread_settings.tenant_id
#   client_id     = var.azuread_settings.client_id
#   client_secret = var.azuread_client_secret
# }

# provider "azurerm" {
#   # Configuration options
#   features {
#     key_vault {
#       recover_soft_deleted_key_vaults = false
#       purge_soft_delete_on_destroy    = false
#     }
#   }

#   tenant_id       = var.azuread_settings.tenant_id
#   client_id       = var.azuread_settings.client_id
#   object_id       = var.azurerm_settings.object_id
#   client_secret   = var.azuread_client_secret
#   subscription_id = var.azurerm_settings.bootstrap_subscription_id
# }

# provider "aws" {
#   # Configuration options
#   region     = var.aws_settings.aws_region
#   access_key = var.aws_settings.aws_access_key
#   secret_key = var.aws_secret_key
# }



# backend "remote" {
#   hostname     = "app.terraform.io"
#   organization = "wibble"

#   workspaces {
#     name = "tfc-bootstrap"
#   }
