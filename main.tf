provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_app_engine_application" "app" {
  project     = var.project_id
  location_id = var.region
}

resource "google_firestore_index" "indexes" {
  count = length(var.indexes)

  project    = var.project_id
  collection = var.kind_name

  fields {
    field_path = var.indexes[count.index].properties[0].property_name
    order      = var.indexes[count.index].properties[0].order
  }
}