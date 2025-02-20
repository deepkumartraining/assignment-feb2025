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
  name       = var.indexes[count.index].index_name

  dynamic "fields" {
    for_each = var.indexes[count.index].properties
    content {
      field_path = fields.value.property_name
      order      = fields.value.order
    }
  }
}

# Outputs for reference
output "datastore_project" {
  value       = var.project_id
  description = "The GCP Project ID where Datastore is set up."
}

output "region" {
  value       = var.region
  description = "The GCP region where the Datastore instance is deployed."
}

output "kind_name" {
  value       = var.kind_name
  description = "The name of the Datastore Kind."
}
