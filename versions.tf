terraform {
  required_providers {
    azuredevops = {
      source  = "registry.terraform.io/microsoft/azuredevops"
      version = ">=0.6.0"
    }
  }
  required_version = ">=1.5"
}
