terraform {
  required_version = ">= 1.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Ensure Datastore API is enabled
resource "google_project_service" "datastore" {
  service = "datastore.googleapis.com"
}

# Set up App Engine with Datastore Compatibility mode
resource "google_app_engine_application" "app" {
  project       = var.project_id
  location_id   = var.region
  database_type = "CLOUD_DATASTORE_COMPATIBILITY"
}

# Create Firestore indexes for the specified Datastore Kind
resource "google_firestore_index" "indexes" {
  count      = length(var.indexes)
  project    = var.project_id
  collection = var.kind_name
  fields {
    field_path = var.indexes[count.index].properties[0].property_name
    order      = var.indexes[count.index].properties[0].order
  }

  #name       = var.indexes[count.index].index_name

  #dynamic "fields" {
  #  for_each = var.indexes[count.index].properties
  #  content {
  #    field_path = fields.value.property_name
  #    order      = fields.value.order
  #  }
  #}
}
