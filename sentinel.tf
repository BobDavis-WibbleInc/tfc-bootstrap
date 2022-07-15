#----------------------------------------------------------------------------------------#
# Create Sentinel Azure Policy Set
#----------------------------------------------------------------------------------------#
# data "tfe_workspace_ids" "azure-workspaces" {
#   tag_names    = ["azure"]
#   organization = var.project
# }

# resource "tfe_policy_set" "azure-policies" {
#   name          = "azure-policy-set"
#   description   = "Policy Set to Hold for Azure Related Policies"
#   organization  = var.project
#   policies_path = "policies/azure"
#   workspace_ids = values(data.tfe_workspace_ids.azure-workspaces.ids)

#   vcs_repo {
#     identifier         = "${var.git_vcs_repo_id}/tfc-bootstrap"
#     oauth_token_id     = var.git_oauth_token_id
#     branch             = "main"
#     ingress_submodules = false
#   }
# }
