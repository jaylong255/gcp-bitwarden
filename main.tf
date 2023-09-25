locals {
  project = var.project
}

provider "google" {
  project = local.project
  region  = "us-central1"
  zone    = "us-central1-b"
}

# set a bucket for remote state
terraform {
  backend "gcs" {
    bucket = "my-project-terraform-state"
    prefix = "terraform/state"
  }
}