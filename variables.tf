variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "gcpsa-sandbox"
}

variable "gcp_location" {
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

variable "security_policy_name" {
  default = var.google_compute_security_policy_id
}
