module "google_compute_instance" {
  source = "../../module/google_compute_instance"

  project_id = "馬賽克"
  instance_name = "test-prod"
  machine_type  = "e2-small"
  instance_zone = "asia-east1-b"
  instance_tags = []
  instance_labels = {
    "dept" = "test"
    "env" = "prod"
    "product" = "prod"
  }
  boot_disk_image_name    = "debian-cloud/debian-10"
  boot_disk_size = "50"
  attached_disk_enabled = false
  network_name  = "馬賽克"
  subnetwork_name = "馬賽克"
  nat_ip_enabled = false
  metadata = {}
  resource_policies = []
  service_account_email = "馬賽克"
  service_account_scopes = ["storage-ro", "logging-write", "monitoring-write", "service-control", "service-management", "trace"]
}