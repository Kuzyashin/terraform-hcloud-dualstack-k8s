terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.35"
    }
    template = {
      source  = "hashicorp/cloudinit"
      version = "2.2.0"
    }
  }
}

locals {
  all_nodes = concat(module.master, module.worker)
}
