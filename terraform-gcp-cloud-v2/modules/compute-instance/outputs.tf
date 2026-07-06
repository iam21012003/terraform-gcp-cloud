output "instance_name" {
  description = "Name of the created VM instance"
  value       = google_compute_instance.vm.name
}

output "public_ip" {
  description = "Public IP address of the VM instance"
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}

output "self_link" {
  description = "Full GCP resource URL for the VM"
  value       = google_compute_instance.vm.self_link
}