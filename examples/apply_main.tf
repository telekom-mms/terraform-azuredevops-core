module "core" {
  source = "registry.terraform.io/telekom-mms/core/azuredevops"
  project = {
    mms = {}
  }
}
