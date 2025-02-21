# Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  
# google_app_engine_application.app will be created
  + resource "google_app_engine_application" "app" {
      + app_id            = (known after apply)
      + auth_domain       = (known after apply)
      + code_bucket       = (known after apply)
      + database_type     = (known after apply)
      + default_bucket    = (known after apply)
      + default_hostname  = (known after apply)
      + gcr_domain        = (known after apply)
      + id                = (known after apply)
      + location_id       = "us-central1"
      + name              = (known after apply)
      + project           = "test-project"
      + serving_status    = (known after apply)
      + url_dispatch_rule = (known after apply)
    }

  # google_firestore_index.indexes["email_index"] will be created
  + resource "google_firestore_index" "indexes" {
      + api_scope   = "ANY_API"
      + collection  = "User"
      + database    = "(default)"
      + id          = (known after apply)
      + name        = (known after apply)
      + project     = "test-project"
      + query_scope = "COLLECTION"

      + fields {
          + field_path = "email"
          + order      = "ASCENDING"
        }
    }

  # google_firestore_index.indexes["user_index"] will be created
  + resource "google_firestore_index" "indexes" {
      + api_scope   = "ANY_API"
      + collection  = "User"
      + database    = "(default)"
      + id          = (known after apply)
      + name        = (known after apply)
      + project     = "test-project"
      + query_scope = "COLLECTION"

      + fields {
          + field_path = "username"
          + order      = "ASCENDING"
        }
      + fields {
          + field_path = "created_at"
          + order      = "DESCENDING"
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + datastore_instance = (known after apply)
  + datastore_project  = "test-project"
  + indexes_created    = [
      + (known after apply),
      + (known after apply),
    ]
  + kind_name          = "User"
  + region             = "us-central1"