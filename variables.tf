variable "project_id" {
  description = "The GCP project ID"
  type        = string
  default     = "trusty-pixel-461918-c7"
}

variable "region" {
  description = "The GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "The GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "my-gke-cluster"
}