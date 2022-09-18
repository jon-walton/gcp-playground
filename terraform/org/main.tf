data "google_organization" "org" {
  domain = var.org_domain
}

resource "google_folder" "shared" {
  display_name = "Shared Infrastructure"
  parent       = data.google_organization.org.name
}

resource "google_folder" "shared_networking" {
  display_name = "Networking"
  parent       = google_folder.shared.name
}

resource "google_folder" "shared_management" {
  display_name = "Management"
  parent       = google_folder.shared.name
}

resource "google_folder" "dev" {
  display_name = "Dev"
  parent       = data.google_organization.org.name
}
