resource "tfe_variable" "test_var" {
  key          = "test_var"
  value        = "wibble"
  category     = "terraform"
  workspace_id = "ws-jNrXz6mbTuJQcySa"
  description  = "a useful description"
}


variable "test_var" {
  description = "Test Variable"
  type        = string
  default     = null
}


# #------------------------------------------------------------------------------#
# # Terraform Organization owners team
# #------------------------------------------------------------------------------#
# data "tfe_workspace" "test" {
#   name         = "tfc-bootstrap"
#   organization = "wibble"
# }

# output "test" {
#   value = data.tfe_workspace.test
# }

