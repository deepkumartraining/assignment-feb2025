provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_app_engine_application" "app" {
  project     = var.project_id
  location_id = var.region
}


#resource "google_firestore_index" "indexes" {
#  for_each = { for idx in var.indexes : idx.index_name => idx }
#
#  project    = var.project_id
#  collection = var.kind_name

#  fields {
#    field_path = each.value.properties[0].property_name
#    order      = each.value.properties[0].order
#  }
#}

resource "google_firestore_index" "indexes" {
  for_each = { for idx in var.indexes : idx.index_name => idx }

  project    = var.project_id
  collection = var.kind_name

  dynamic "fields" {
    for_each = each.value.properties
    content {
      field_path = fields.value.property_name
      order      = fields.value.order
    }
  }
}