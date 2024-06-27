module "app" {
  source            = "./app" 
  cluster_id =  var.cluster_id
  cluster_endpoint = var.cluster_endpoint
  cluster_ca_certificate = var.cluster_ca_certificate
}

module "cloud_armor" {
  source            = "./cloud_armor"
  project_id        = var.project_id
}

#module "gcs_for_state" {
#  source            = "./gcs_for_state"
#  gcp_location        = var.gcp_location
#}

module "gke" {
  source            = "./gke"
  project_id        = var.project_id
  gcp_location        = var.gcp_location
}

module "lb_cdn" {
  source            = "./lb_cdn"
  google_compute_security_policy_id = var.google_compute_security_policy_id
}