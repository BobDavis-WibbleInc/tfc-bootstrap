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
}

resource "tfe_workspace" "tfc_aws" {
  name               = "tfc-aws"
  organization       = "wibble"
  allow_destroy_plan = true
  auto_apply         = true

  vcs_repo {
    identifier     = "BobDavis-WibbleInc/tfc-aws"
    oauth_token_id = "ot-6172QnkrWpoNQG87"
    branch         = "main"
  }

  tag_names = ["aws"]
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
  tag_names = ["aws"]
}
