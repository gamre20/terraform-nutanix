terraform {
  nutanix = {
    source = "nutanix/nutanix"
   }
}



provider "nutanix" {
  username        = var.nutanix_username
  password        = var.nutanix_passord
  endpoint        = var.nutanix_endpoint
  port            = var.nutanix_port
  insecure        = true
  wait_timeout    = 10
  session_auth    = true
}

resource "nutanix_image" "rhcos_image" {
  name            = "rhcos"
  description     = "Red Hat CoreOs"
  source_uri      = "http://archive.ubuntu.com/ubuntu/dists/bionic/main/installer-amd64/current/images/netboot/mini.iso"
}

module "create_vm" {
  source = "./modules/vm"
  
}
