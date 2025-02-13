variable "resource_group_name" {
  type        = string
  description = "Specifies the name of the resource group that will be created."
}

variable "location" {
  type        = string
  description = "The location/region where Azure resource will be created."
  default     = "westeurope"
}

variable "key_vault_name" {
  type        = string
  description = "Specifies a key vault name"
}

variable "use_rbac_mode" {
  type        = bool
  description = "Specifies to use rbac mode. (Optional)"
  default     = null
}
