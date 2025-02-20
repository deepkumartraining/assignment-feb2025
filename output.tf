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
