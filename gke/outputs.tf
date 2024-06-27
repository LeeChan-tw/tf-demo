output "cluster_ca_certificate" {
  value = google_container_cluster.default.master_auth[0].cluster_ca_certificate
}

output "cluster_id" {
  value = google_container_cluster.default
}

output "cluster_endpoint" {
  value = google_container_cluster.default.endpoint
}