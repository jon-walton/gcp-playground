terraform {
  backend "remote" {
    organization = "gcp-playground"

    workspaces {
      name = "org"
    }
  }
}
