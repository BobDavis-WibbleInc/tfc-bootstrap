resource "tfe_variable" "my_key_name" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  workspace_id = "ws-jNrXz6mbTuJQcySa"
  description  = "a useful description"
}


variable "my_key_name" {
  description = "Test Variable"
  type        = string
  default     = null
}
