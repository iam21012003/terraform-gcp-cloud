terraform {
  required_version = ">= 1.0.0"

  backend "gcs" {
    bucket = "abhay-terraform-bucket-day2"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "abhay-terraform-dev"
  region  = "us-east1"   # Matches your bucket region
  zone    = "us-east1-b" # Free-tier eligible zone
}



resource "google_compute_instance" "my_free_vm" {
  name         = "abhay-automated-vm2"
  machine_type = "e2-micro" # 100% Free Tier Eligible

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 10 # 10 GB (Well within the 30 GB free limit)
    }
  }

  network_interface {
    network = "default" # Connects to your default cloud network
    access_config {
      # This empty block gives your VM a free public IP address
    }
  }
}

#doing it again
