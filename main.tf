terraform {
  required_providers {
    aws = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  required_version = ">= 1.0"
}

locals {
  tags = {
    Environment = var.environment
  }
}

resource "azurerm_storage_account" "storage" {
  name                          = var.storage_account_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  account_kind                  = "StorageV2"
  account_tier                  = "Standard"
  account_replication_type      = var.environment == "prod" ? "GRS" : "LRS"
  public_network_access_enabled = false
  min_tls_version               = "TLS1_2"

  tags = local.tags
}