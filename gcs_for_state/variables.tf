variable "gcs_storage_class" {
  type = string
  description = "storage_class"
  default = "STANDARD"
}

output "bucket_name" {
  value = google_storage_bucket.gcs-for-tfstate.name
}