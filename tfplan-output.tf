student_03_fd5aca21e3ed@cloudshell:~/assignment-feb2025 (qwiklabs-gcp-02-9cb195187372)$ terraform show tfplan

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

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
      + project           = "qwiklabs-gcp-02-9cb195187372"
      + serving_status    = (known after apply)
      + url_dispatch_rule = (known after apply)
    }

  # google_project_service.datastore will be created
  + resource "google_project_service" "datastore" {
      + disable_on_destroy = true
      + id                 = (known after apply)
      + project            = "qwiklabs-gcp-02-9cb195187372"
      + service            = "datastore.googleapis.com"
    }

Plan: 2 to add, 0 to change, 0 to destroy.