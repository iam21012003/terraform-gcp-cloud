terraform {
  required_version = ">= 1.0.0"

  backend "gcs" {
    bucket = "abhay-tf-state-bucket-v1"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "abhay-terraform-dev"
  region  = "us-east1"       # Updated to match your bucket in image_a3b561.png
  zone    = "us-east1-b"     # Updated to a free-tier zone in us-east1
}