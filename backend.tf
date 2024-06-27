terraform {
 backend "gcs" {
   bucket  = var.google_storage_bucket.bucket_tfstate.name
   prefix  = "terraform/state"
 }
}