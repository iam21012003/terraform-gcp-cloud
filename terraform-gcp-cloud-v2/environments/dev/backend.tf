terraform {
  required_version = ">= 1.0.0"

  backend "gcs" {
    bucket = "abhay-terraform-bucket-day2"
    prefix = "terraform/state/v2-dev"
  }
}

provider "google" {
  project = "abhay-terraform-dev"
  region  = "us-east1"
  zone    = "us-east1-b"
}