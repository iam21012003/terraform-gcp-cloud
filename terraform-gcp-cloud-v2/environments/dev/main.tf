module "app_vm" {
  source = "../../modules/compute-instance"

  instance_name = "abhay-automated-vm2"
  machine_type  = "e2-micro"
  zone          = "us-east1-b"
  tags          = ["ssh-allowed"]

  labels = {
    environment = "dev"
    managed_by  = "terraform"
  }

  startup_script = <<-EOT
        #!/bin/bash
        apt-get update
        apt-get install -y nginx
        systemctl enable nginx
        systemctl start nginx
        echo "Deployed via Terraform - modular v2" > /var/www/html/index.html
    EOT
}

module "vm_firewall" {
  source = "../../modules/firewall"

  firewall_name = "allow-ssh-http-dev-v2"
  allowed_ports = ["22", "80"]
  target_tags   = ["ssh-allowed"]
}

output "vm_public_ip" {
  value = module.app_vm.instance_public_ip
}