output "storage_accout_id" {
  description = "The id of the storage account."
  value       = azurerm_storage_account.storage.id
  sensitive   = false
}   