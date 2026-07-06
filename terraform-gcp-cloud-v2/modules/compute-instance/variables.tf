variable "instance_name" {
  description = "Name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "GCP machine type"
  type        = string
  default     = "e2-micro" # 100% Free
}

variable "zone" {
  description = "GCP zone to deploy the instance"
  type        = string
}

variable "image" {
  description = "Boot disk OS image"
  type        = string
  default     = "debian-cloud/debian-11"
}

variable "disk_size" {
  description = "Boot disk size in GB"
  type        = number
  default     = 10 # 10 GB
}

variable "tags" {
  description = "Network tags for firewall targeting"
  type        = list(string)
  default     = []
}

variable "labels" {
  description = "Labels for cost tracking"
  type        = map(string)
  default     = {}
}

variable "startup_script" {
  description = "Shell script to run when the VM first boots"
  type        = string
  default     = ""
}

variable "network" {
  description = "VPC network for the instance"
  type        = string
  default     = "default"
}