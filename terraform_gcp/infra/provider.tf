#gcp provider

provider "google" {
  credentials = file("dazzling-decker-427913-r9-94155c10e1e0.json")
  project     = var.gcp_project
  region      = var.gcp_region
}