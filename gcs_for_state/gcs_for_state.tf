variable "gcp_location" {}

resource "google_storage_bucket" "gcs-for-tfstate" {
  name          = "${random_id.bucket_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = var.gcp_location  
  storage_class = var.gcs_storage_class
}

terraform {
 backend "gcs" {
   bucket  = var.bucket_name
   prefix  = "terraform/state"
 }
}