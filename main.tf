module "app" {
  source            = "./app" 
  cluster_id =  gke.cluster_id
  cluster_endpoint = gke.cluster_endpoint
  cluster_ca_certificate = gke.cluster_ca_certificate
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
  google_compute_security_policy_id = lb_cdn.google_compute_security_policy_id
}