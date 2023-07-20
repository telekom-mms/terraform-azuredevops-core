<!-- BEGIN_TF_DOCS -->
# core

This module manages the microsoft/azuredevops core resources, see https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs.

For more information about the module structure see https://telekom-mms.github.io/terraform-template.

_<-- This file is autogenerated, please do not change. -->_

## Requirements

| Name | Version |
|------|---------|
| terraform | >=1.5 |
| azuredevops | >=0.6.0 |

## Providers

| Name | Version |
|------|---------|
| azuredevops | >=0.6.0 |

## Resources

| Name | Type |
|------|------|
| azuredevops_project.project | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | Resource definition, default settings are defined within locals and merged with var settings. For more information look at [Outputs](#Outputs). | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| project | Outputs all attributes of resource_type. |
| variables | Displays all configurable variables passed by the module. __default__ = predefined values per module. __merged__ = result of merging the default values and custom values passed to the module |

## Examples

Minimal configuration to install the desired resources with the module

```hcl
module "core" {
  source = "registry.terraform.io/telekom-mms/core/azuredevops"
  project = {
    mms = {}
  }
}
```

Advanced configuration to install the desired resources with the module

```hcl
module "core" {
  source = "registry.terraform.io/telekom-mms/core/azuredevops"
  project = {
    mms = {
      description = "project for github"
      features = {
        "testplans" = "enabled"
        "artifacts" = "enabled"
      }
    }
  }
}
```
<!-- END_TF_DOCS -->