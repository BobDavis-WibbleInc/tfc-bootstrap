#------------------------------------------------------------------------------#
# Global Variable Set - deployed from this workspace to all Terraform Workspace
#------------------------------------------------------------------------------#

resource "tfe_variable_set" "global_variables" {
  name         = "global_settings"
  description  = "Terraform Workspace Global Variables."
  organization = "wibble"
  global       = true
}

resource "tfe_variable" "az_vars" {
  key = "az_vars"
  value = replace(jsonencode({
    client_secret   = var.az_client_secret
    client_id       = var.az_client_id
    tenant_id       = var.az_tenant_id
    subscription_id = var.az_subscription_id
    display_name    = var.az_display_name
  }), "/(\".*?\"):/", "$1 = ")
  hcl             = true
  sensitive       = true
  category        = "terraform"
  variable_set_id = tfe_variable_set.global_variables.id
}


resource "tfe_variable" "tf_vars" {
  key = "tf_vars"
  value = replace(jsonencode({
    org                 = "wibble"
    admin_team          = "bob"
    version             = "1.2.1"
    auto_apply          = true
    execution_mode      = "remote"
    global_remote_state = true
    vcs_repo            = true
  }), "/(\".*?\"):/", "$1 = ")
  hcl             = true
  sensitive       = false
  category        = "terraform"
  variable_set_id = tfe_variable_set.global_variables.id
}
