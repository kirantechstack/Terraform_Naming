resource "null_resource" "generate_name" {
  triggers = {
    resource_type = var.resource_type
    base_name     = var.base_name
  }
}

locals {
  truncated_base_name = substr(var.base_name, 0, 8)
  
  resource_name = {
    "virtual_machine" = format("vm-%s-00", local.truncated_base_name)
    "key_vault"       = lower(format("kv-%s", var.base_name))
    "storage_account" = lower(replace(format("sa%s", var.base_name), "/[^a-z0-9]/", ""))
  }
}

output "resource_name" {
  value = local.resource_name[var.resource_type]
}
