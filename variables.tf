variable "GCP_PROJECT" {
  description = "GCP Project ID"
  type        = string
  default     = "gcpsa-sandbox"
}

variable "GCP_REGION" {
  type    = string
  default = "asia-east1"
}

variable "VPC_NETWORK" {
  type    = string
  default = "lee-web-network"
}

variable "cluster_name" {
  type    = string
  default = "gke-tf-ch4-7-3"
}

variable "BUCKET_NAME" {
  type    = string
  default = var.google_storage_bucket.gcs-for-tfstate.name
}