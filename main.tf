terraform {
  required_providers {
    google = {
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("sa-key.json")

  project = "cicd-dev-1"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}