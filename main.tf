module "app" {
  source            = "./app" 
  cluster_id =  module.gke.cluster_id
  cluster_endpoint = module.gke.cluster_endpoint
  cluster_ca_certificate = module.gke.cluster_ca_certificate
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

#module "lb_cdn" {
#  source            = "./lb_cdn"
#  google_compute_security_policy_id = module.cloud_armor.google_compute_security_policy_id
#}