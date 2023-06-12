resource "google_compute_instance" "instance" {
  project      = "馬賽克"
  name         = "test-prod"
  machine_type = "e2-small"
  zone         = "asia-east1-b"

  labels = {
    aaa = "test1"
    bbb  = "test2"
    ccc = "test3"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      size = 50
    }
  }
  
    network_interface {
    network = "馬賽克"
    subnetwork = "馬賽克"

  }

  service_account {
    email  = "馬賽克"
    scopes = ["storage-rw", "logging-write", "monitoring-write", "service-control", "service-management", "trace"]
  }
}