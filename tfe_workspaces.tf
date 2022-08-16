resource "tfe_workspace" "tfc_azure" {
  name               = "tfc-azure"
  organization       = var.project
  allow_destroy_plan = true
  auto_apply         = true

  vcs_repo {
    identifier     = "${var.git_vcs_repo_id}/tfc-azure"
    oauth_token_id = var.git_oauth_token_id
    branch         = "main"
  }

  tag_names = ["azure"]

  # depends_on = [
  #   tfe_variable_set.global_variables,
  #   tfe_variable.az_vars,
  #   tfe_variable.tf_vars,
  #   tfe_variable.gen_vars,
  # ]
}

# resource "tfe_workspace" "tfc_devops" {
#   name               = "tfc-devops"
#   organization       = var.project
#   allow_destroy_plan = true
#   auto_apply         = true

#   vcs_repo {
#     identifier     = "${var.git_vcs_repo_id}/tfc-devops"
#     oauth_token_id = var.git_oauth_token_id
#     branch         = "main"
#   }
#   tag_names = ["azure", "devops"]

#   depends_on = [
#     tfe_variable_set.global_variables,
#     tfe_variable.az_vars,
#     tfe_variable.tf_vars,
#     tfe_variable.gen_vars,
#     tfe_workspace.tfc_azure, # uses resources made here 
#   ]
# }

# resource "tfe_workspace" "tfc_aws" {
#   name               = "tfc-aws"
#   organization       = var.project
#   allow_destroy_plan = true
#   auto_apply         = true

#   vcs_repo {
#     identifier     = "${var.git_vcs_repo_id}/tfc-aws"
#     oauth_token_id = var.git_oauth_token_id
#     branch         = "main"
#   }

#   tag_names = ["aws"]

#   depends_on = [
#     tfe_variable_set.global_variables,
#     tfe_variable.az_vars,
#     tfe_variable.tf_vars,
#   ]

# }
