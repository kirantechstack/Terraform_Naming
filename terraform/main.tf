module "parent_module" {
  source = "./terraform-modules/parent-module"

  resource_map = {
    "myVirtualMachine" = "virtual_machine"
    "myKeyVault"       = "key_vault"
    "myStorageAccount" = "storage_account"
  }
}

output "resource_names" {
  value = module.parent_module.resource_names
}
