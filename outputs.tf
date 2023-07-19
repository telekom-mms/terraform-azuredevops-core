output "project" {
  description = "Outputs all attributes of resource_type."
  value = {
    for project in keys(azuredevops_project.project) :
    project => {
      for key, value in azuredevops_project.project[project] :
      key => value
    }
  }
}

output "variables" {
  description = "Displays all configurable variables passed by the module. __default__ = predefined values per module. __merged__ = result of merging the default values and custom values passed to the module"
  value = {
    default = {
      for variable in keys(local.default) :
      variable => local.default[variable]
    }
    merged = {
      project = {
        for key in keys(var.project) :
        key => local.project[key]
      }
    }
  }
}
