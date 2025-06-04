terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.8.0"
    }
  }
}


provider "google" {
  project     = "trusty-pixel-461918-c7"
  region      = "us-central1"
}