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
