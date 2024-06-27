output "cluster_ca_certificate" {
  value = gke.cluster_ca_certificate
}

output "cluster_endpoint" {
  value = gke.cluster_endpoint
}

output "cluster_id" {
  value = gke.cluster_id
}

output "google_compute_security_policy_id" {
  value = lb_cdn.google_compute_security_policy_id
}