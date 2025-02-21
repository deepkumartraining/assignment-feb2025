
#Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:

Terraform will perform the following actions:

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

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + datastore_instance = (known after apply)
  + datastore_project  = "test-project"
  + indexes_created    = []
  + kind_name          = "user"
  + region             = "us-central1"
