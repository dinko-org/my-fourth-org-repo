terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.30.0"
    }
  }
  backend "azurerm" {
    key      = "terraform.tfstate"
    client_id            = "${{ secrets.AZURE_CLIENT_ID }}"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    subscription_id      = "${{ secrets.AZURE_SUBSCRIPTION_ID }}"  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable.
    tenant_id            = "${{ secrets.AZURE_TENANT_ID }}"  # Can also be set via `ARM_TENANT_ID` environment variable.

    use_oidc = true
  }
}
provider "azurerm" {
  features {
  features {
    key_vault {
      recover_soft_deleted_key_vaults = true
      purge_soft_delete_on_destroy    = true
    }
  }
  }
  use_oidc = true
}
