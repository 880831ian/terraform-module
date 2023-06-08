provider "google" {
  project = "馬賽克"
  zone    = "asia-east1-b"
}

resource "google_compute_instance" "instance" {
  name         = "test-dev"
  machine_type = "e2-small"
  zone         = "asia-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
}