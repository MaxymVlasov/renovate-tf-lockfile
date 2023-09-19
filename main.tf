terraform {
  required_version = "~> 1.3"

  required_providers {
    utils = {
      source  = "cloudposse/utils"
      version = ">= 0.3.0"
    }
  }
}

provider "utils" {}

module "eks" {
  source  = "cloudposse/stack-config/yaml//modules/remote-state"
  version = "1.5.0"

  component = "eks/eks"
}
