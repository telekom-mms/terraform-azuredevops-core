/**
* # core
*
* This module manages the microsoft/azuredevops core resources.
* For more information see https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs
*
*/

resource "azuredevops_project" "project" {
  for_each = var.project

  name               = local.project[each.key].name == "" ? each.key : local.project[each.key].name
  description        = local.project[each.key].description
  visibility         = local.project[each.key].visibility
  version_control    = local.project[each.key].version_control
  work_item_template = local.project[each.key].work_item_template
  features           = local.project[each.key].features
}
