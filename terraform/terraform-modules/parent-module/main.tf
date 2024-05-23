module "naming_module" {
  source = "../naming-module"

  for_each     = var.resource_map
  base_name    = each.key
  resource_type = each.value
}

output "resource_names" {
  value = { for k, v in module.naming_module : k => v.resource_name }
}
