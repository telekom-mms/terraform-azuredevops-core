variable "project" {
  type        = any
  default     = {}
  description = "Resource definition, default settings are defined within locals and merged with var settings. For more information look at [Outputs](#Outputs)."
}

locals {
  default = {
    // resource definition
    project = {
      name               = ""
      description        = null
      visibility         = null
      version_control    = null
      work_item_template = null
      features = {
        "testplans" = "disabled"
        "artifacts" = "disabled"
      } // defined default
    }
  }

  // compare and merge custom and default values
  // deep merge of all custom and default values
  project = {
    for project in keys(var.project) :
    project => merge(local.default.project, var.project[project])
  }
}
