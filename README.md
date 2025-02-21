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