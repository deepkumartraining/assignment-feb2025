# GCP Datastore Terraform Module

## Overview
This Terraform module provisions a GCP Datastore instance in Cloud Datastore Compatibility mode, optimized for query performance.

## Usage

```hcl
module "datastore" {
  source         = "./path/to/module"
  project_id     = "your-project-id"
  region         = "us-central1"
  datastore_name = "datastore-assignment"
  kind_name      = "User"
  indexes = [
    {
      index_name = "user_index"
      properties = [
        {
          property_name = "username"
          order         = "ASCENDING"
        },
        {
          property_name = "created_at"
          order         = "DESCENDING"
        }
      ]
    },
    {
      index_name = "email_index"
      properties = [
        {
          property_name = "email"
          order         = "ASCENDING"
        }
      ]
    }
  ]
}

## Inputs

project_id: The GCP project ID.
region: The region where resources will be created.
datastore_name: The name of the Datastore.
kind_name: The Kind name in Datastore.
indexes: A list of index configurations for the Datastore Kind.

## Outputs
datastore_project: The GCP Project ID where Datastore is set up.
region: The GCP region where the Datastore instance is deployed.
kind_name: The name of the Datastore Kind.
datastore_instance: The Firestore in Datastore mode instance name.
indexes_created: List of created indexes for the Datastore kind.


## Testing
terraform validate
terraform plan -var-file="env.tfvars"