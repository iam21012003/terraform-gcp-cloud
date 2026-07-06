variable "firewall_name" {
  description = "Name of the firewall rule"
  type        = string
}

variable "network" {
  description = "VPC network this rule applies to"
  type        = string
  default     = "default"
}

variable "allowed_ports" {
  description = "List of TCP ports allowed by the firewall rule"
  type        = list(string)
}

variable "source_ranges" {
  description = "CIDR ranges allowed to connect"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "target_tags" {
  description = "which VMs (by tag) this rule applies to"
  type        = list(string)
}