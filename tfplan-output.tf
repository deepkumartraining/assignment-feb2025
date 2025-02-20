#Terraform will perform the following actions:

  # google_app_engine_application.app will be created
  + resource "google_app_engine_application" "app" {
      + app_id            = (known after apply)
      + auth_domain       = (known after apply)
      + code_bucket       = (known after apply)
      + database_type     = "CLOUD_DATASTORE_COMPATIBILITY"
      + default_bucket    = (known after apply)
      + default_hostname  = (known after apply)
      + gcr_domain        = (known after apply)
      + id                = (known after apply)
      + location_id       = "us-central1"
      + name              = (known after apply)
      + project           = "project-id"
      + serving_status    = (known after apply)
      + url_dispatch_rule = (known after apply)
    }

  # google_project_service.datastore will be created
  + resource "google_project_service" "datastore" {
      + disable_on_destroy = true
      + id                 = (known after apply)
      + project            = "project-id"
      + service            = "datastore.googleapis.com"
    }

Plan: 2 to add, 0 to change, 0 to destroy.