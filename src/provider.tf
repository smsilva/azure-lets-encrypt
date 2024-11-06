terraform {
  required_version = ">= 0.15.1, < 2.0.0"

  backend "local" {}

  required_providers {
    acme = {
      source  = "vancluever/acme"
      version = "~> 2.0, < 3.0"
    }
  }
}

provider "acme" {
  server_url = var.acme_server_url
}
