resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "test-subnet"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
  secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }
}
