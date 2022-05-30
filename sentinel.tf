
#----------------------------------------------------------------------------------------#
# Create Sentinel tst Environment Policy Set
#----------------------------------------------------------------------------------------#
data "tfe_workspace_ids" "azure-workspaces" {
  tag_names    = ["azure"]
  organization = "wibble"
}

resource "tfe_policy_set" "azure-tst-policies" {
  name          = "azure-policy-set"
  description   = "Policy Set to Hold for Azure Related Policies"
  organization  = "wibble"
  policies_path = "policies/azure"
  workspace_ids = values(data.tfe_workspace_ids.azure-workspaces.ids)

  vcs_repo {
    identifier         = "BobDavis-WibbleInc/tfc-bootstrap"
    oauth_token_id     = "ot-6172QnkrWpoNQG87"
    branch             = "main"
    ingress_submodules = false
  }
}
