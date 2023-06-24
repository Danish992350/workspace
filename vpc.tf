resource "google_compute_network" "vpc_network" {
  name                    = "vpc-nginx"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "nginx"
  ip_cidr_range = "192.168.7.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.name
}
