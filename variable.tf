variable "project_id" {
  description = "The GCP project ID."
  type        = string
}

variable "region" {
  description = "The region where resources will be created."
  type        = string
  default     = "us-central1"
}

variable "datastore_name" {
  description = "The name of the Datastore."
  type        = string
}

variable "kind_name" {
  description = "The Kind name in Datastore."
  type        = string
}

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