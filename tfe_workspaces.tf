resource "tfe_workspace" "tfc_azure" {
  name         = "tfc-azure"
  organization = "wibble"

  vcs_repo {
    identifier     = "BobDavis-WibbleInc/tfc-azure"
    oauth_token_id = "ot-6172QnkrWpoNQG87"
    branch         = "main"
  }

  tag_names = ["Azure"]
}


