resource "tfe_variable" "test" {
  key          = "my_key_name"
  value        = "my_value_name"
  category     = "terraform"
  workspace_id = "ws-jNrXz6mbTuJQcySa"
  description  = "a useful description"
}
