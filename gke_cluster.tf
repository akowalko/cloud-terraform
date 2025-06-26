resource "google_container_cluster" "default" {
  name = "example-autopilot-cluster"

  location                 = "us-central1"
  enable_autopilot         = true
  enable_l4_ilb_subsetting = true

  network    = google_compute_network.vpc_network.id
  subnetwork = google_compute_subnetwork.subnetwork.id



  # Set `deletion_protection` to `true` will ensure that one cannot
  # accidentally delete this instance by use of Terraform.
  deletion_protection = false
}