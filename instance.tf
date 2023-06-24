resource "google_compute_instance" "vm_instance" {
  name         = "nginx"
  machine_type = var.machine_type
  zone         = "us-central1-a"

  tags = ["nginx"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }


  network_interface {
    network = google_compute_network.vpc_network.name
    subnetwork = google_compute_subnetwork.subnet.name
  

    access_config {
    }
  }

  metadata_startup_script = "sudo apt -y update; sudo apt -y install nginx;"
}

