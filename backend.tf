terraform {
 backend "gcs" {
   bucket  = var.BUCKET_NAME
   prefix  = "terraform/state"
 }
}