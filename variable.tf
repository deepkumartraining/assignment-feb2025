# Input Variables for GCP Datastore Configuration

variable "project_id" {
  description = "The GCP Project ID where resources will be created."
  type        = string
}

variable "region" {
  description = "GCP region for deployment."
  type        = string
  default     = "us-central"  # Default region if none is provided
}

variable "datastore_name" {
  description = "The name of the Datastore instance"
  type        = string
}

variable "kind_name" {
  description = "The Kind name in Datastore."
  type        = string
}

# Define the list of index configurations, including the name, properties, and sort order
variable "indexes" {
  description = "A list of index configurations for the Datastore Kind."
  type = list(object({
    index_name  = string
    properties  = list(object({
      property_name = string
      order         = string
    }))
  }))
  default = []  # Default is no indexes
}
