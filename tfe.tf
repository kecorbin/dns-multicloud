terraform {
  backend "remote" {
    organization = "kcorbin"

    workspaces {
      name = "dns-multicloud"
    }
  }
}
