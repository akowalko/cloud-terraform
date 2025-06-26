resource "google_container_cluster" "primary" {
  name               = "gke-cluster"
  location           = var.region
  remove_default_node_pool = true
  initial_node_count = 1  # wymagane, ale usuwamy default pool

  network    = google_compute_network.vpc_network.name
  subnetwork = google_compute_subnetwork.subnetwork.name
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "primary-node-pool"
  cluster    = google_container_cluster.primary.name
  location   = var.region

  node_count = 3

  node_config {
    machine_type = "e2-medium"
    disk_size_gb = 80
    disk_type    = "pd-standard"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
    metadata = {
      disable-legacy-endpoints = "true"
    }
  }
}
