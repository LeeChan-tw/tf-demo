resource "google_compute_global_address" "default" {
  name = "global-appserver-ip"
}

resource "google_compute_managed_ssl_certificate" "default" {
  name = "appserver-cert"

  managed {
    domains = ["yourdomain.com"]
  }
}

resource "google_compute_backend_service" "default" {
  name        = "appserver-backend"
  port_name   = "http"
  protocol    = "HTTP"
  timeout_sec = 10

  backend {
    group = google_container_node_pool.primary_nodes.instance_group_urls[0]
  }

  health_checks = [google_compute_health_check.default.id]

  security_policy = google_compute_security_policy.policy.id
  
  cdn_policy {
    cache_mode = "USE_ORIGIN_HEADERS"
  }
}

resource "google_compute_url_map" "default" {
  name            = "appserver-url-map"
  default_service = google_compute_backend_service.default.id
}

resource "google_compute_target_https_proxy" "default" {
  name             = "appserver-target-proxy"
  url_map          = google_compute_url_map.default.id
  ssl_certificates = [google_compute_managed_ssl_certificate.default.id]
}

resource "google_compute_global_forwarding_rule" "default" {
  name       = "appserver-forwarding-rule"
  target     = google_compute_target_https_proxy.default.id
  port_range = "443"
  ip_address = google_compute_global_address.default.address
}

resource "google_compute_health_check" "default" {
  name               = "appserver-health-check"
  check_interval_sec = 5
  timeout_sec        = 5

  http_health_check {
    port = 80
  }
}
