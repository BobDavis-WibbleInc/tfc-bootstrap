# #------------------------------------------------------------------------------#
# # Terraform Variables
# #------------------------------------------------------------------------------#

# variable "tf_token" {
#   description = "Terraform Token"
#   type        = string
#   default     = null
# }

# #------------------------------------------------------------------------------#
# # Git Lab Variables
# #------------------------------------------------------------------------------#

# variable "git_client_id" {
#   description = "git client id"
#   type        = string
#   default     = null
# }


# variable "git_oauth_secret" {
#   description = "git oauth secret"
#   type        = string
#   default     = null
# }

# variable "git_oauth_token_id" {
#   description = "git oauth token id"
#   type        = string
#   default     = null
# }

#------------------------------------------------------------------------------#
# Azure Account Variables
#------------------------------------------------------------------------------#


variable "az_client_secret" {
  description = "Azure Client Secret"
  type        = string
  default     = null
}

variable "az_client_id" {
  description = "Azure Client ID"
  type        = string
  default     = null
}

variable "az_tenant_id" {
  description = "Azure Tennat ID"
  type        = string
  default     = null
}

variable "az_subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = null
}

variable "az_display_name" {
  description = "Azure Subscription Display Name"
  type        = string
  default     = null
}
