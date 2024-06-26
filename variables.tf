variable "GCP_PROJECT" {
  description = "GCP Project ID"
  type        = string
  default     = "gcpsa-sandbox"
}

variable "GCP_REGION" {
  type    = string
  default = "asia-east1"
}

variable "cluster_name" {
  type    = string
  default = "gke-tf-ch4-7-3"
}