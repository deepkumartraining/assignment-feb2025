# Output Variables for reference

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

output "datastore_instance" {
  value       = google_app_engine_application.app.name
  description = "The Firestore in Datastore mode instance name."
}

output "indexes_created" {
  value       = [for index in google_firestore_index.indexes : index.name]
  description = "List of created indexes for the Datastore kind."
}