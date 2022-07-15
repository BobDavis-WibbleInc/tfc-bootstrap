resource "tfe_workspace" "tfc_azure" {
  name               = "tfc-azure"
  organization       = "wibble"
  allow_destroy_plan = true
  auto_apply         = true

  vcs_repo {
    identifier     = "BobDavis-WibbleInc/tfc-azure"
    oauth_token_id = "ot-6172QnkrWpoNQG87"
    branch         = "main"
  }

  tag_names = ["azure"]

  depends_on = [
    tfe_variable_set.global_variables,
    tfe_variable.az_vars,
    tfe_variable.tf_vars,
  ]
}

resource "tfe_workspace" "tfc_devops" {
  name               = "tfc-devops"
  organization       = "wibble"
  allow_destroy_plan = true
  auto_apply         = true

  vcs_repo {
    identifier     = "BobDavis-WibbleInc/tfc-devops"
    oauth_token_id = "ot-6172QnkrWpoNQG87"
    branch         = "main"
  }
  tag_names = ["azure", "devops"]

  depends_on = [
    tfe_variable_set.global_variables,
    tfe_variable.az_vars,
    tfe_variable.tf_vars,
    tfe_workspace.tfc_azure, # uses vars in the storage table made here 
  ]

}


# resource "tfe_workspace" "tfc_aws" {
#   name               = "tfc-aws"
#   organization       = "wibble"
#   allow_destroy_plan = true
#   auto_apply         = true

#   vcs_repo {
#     identifier     = "BobDavis-WibbleInc/tfc-aws"
#     oauth_token_id = "ot-6172QnkrWpoNQG87"
#     branch         = "main"
#   }

#   tag_names = ["aws"]

#   depends_on = [
#     tfe_variable_set.global_variables,
#     tfe_variable.az_vars,
#     tfe_variable.tf_vars,
#   ]

# }
