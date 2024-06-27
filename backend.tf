terraform {
 backend "gcs" {
   bucket  = "lee-gcs-logs"
   prefix  = "terraform/state"
 }
}