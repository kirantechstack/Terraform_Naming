![image](https://github.com/kirantechstack/Terraform_Naming/assets/147102032/fc29407f-d987-4b7f-9be9-c5067706d78e)# Terraform Resource Naming Modules

This repository contains Terraform modules for generating consistent names for resources deployed in a cloud environment. The modules help ensure that resource names adhere to specified naming conventions based on resource type.

## Modules

### Naming Module

The `naming-module` is responsible for generating resource names based on a given base name and resource type. The naming conventions are as follows:

- **virtual_machine**: Appends "vm-" to the front and "-00" to the back of the base name. If the combined name exceeds 15 characters, the base name is truncated accordingly.
- **key_vault**: Appends "kv-" to the front of the base name and converts it to lowercase.
- **storage_account**: Appends "sa" to the front of the base name, removes all non-alphanumeric characters, and converts it to lowercase.

### Parent Module

The `parent-module` calls the naming module for a set of resources defined in a map, where the key is the base name and the value is the resource type. The parent module outputs the generated resource names for all inputs.

## TEST THE CODE

-----> terraform init
-----> terraform plan
------> terraform apply 

## Output 
Desire output will display please find the attached screenshot for your reference


## REFERENCE:
https://developer.hashicorp.com/terraform/plugin/best-practices/naming

https://developer.hashicorp.com/terraform/plugin/best-practices/versioning
