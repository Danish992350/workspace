resource "google_compute_firewall" "firewall" {
  name    = "test-firewall"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_tags = ["nginx"]
  source_ranges = ["0.0.0.0/0"]
}
