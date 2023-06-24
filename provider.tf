provider "google" {
  credentials = file("tf_auth.json")
  project     = "terraform-gcp-389807"
  region      = "us-central1"
  zone        = "us-central1-a"
}

