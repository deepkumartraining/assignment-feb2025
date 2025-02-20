# GCP Datastore Terraform Module

This Terraform module provisions a **Google Cloud Datastore instance** in **Cloud Datastore Compatibility mode**, optimized for query performance. It also supports defining indexes for the Datastore kind.

## Requirements

- **Terraform**: >= 1.0
- **Google Cloud Platform (GCP)**: A GCP account with billing enabled.
- **Service Account with required roles**: `roles/owner` or `roles/datastore.owner` and `roles/appengine.admin`.

## Features

- Provision **Cloud Datastore** in **Compatibility mode**.
- Supports creating multiple **indexes** for Datastore with customizable names and properties.
- Validates the **region** before deploying resources.
- Provides useful **outputs**: Project ID, region, and Datastore Kind.
- Inline **documentation** and clear code structure.

## Usage

### Input Variables

- `project_id`: The GCP project ID for deploying resources.
- `region`: The GCP region for deployment (defaults to `us-central`).
- `datastore_name`: The name of the Datastore instance.
- `kind_name`: The name of the Datastore Kind.
- `indexes`: A list of index configurations including the **index name**, **property names**, and **order** (ascending/descending).

### Example Usage

```hcl
module "datastore" {
  source        = "./path-to-your-module"
  project_id    = "your-gcp-project-id"
  region        = "us-central1"
  datastore_name = "my-datastore"
  kind_name     = "User"

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
    }
  ]
}
