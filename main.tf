terraform {
  required_providers {
   nutanix = {
      source = "nutanix/nutanix"

   }
  
  }

}

provider "nutanix" {
  username = var.nutanix_username
  password = var.nutanix_passord
  endpoint = var.nutanix_endpoint
  port = var.nutanix_port
  insecure = true
  wait_timeout = 10
  session_auth = true
}

data "nutanix_clusters" "clusters" {}

resource "nutanix_virtual_machine" "vm1" {

  name = "test-vm"
  cluster_uuid = data.nutanix_clusters.clusters.entities.0.metadata.uuid
  num_vcpus_per_socket = 1
  num_sockets          = 1
  memory_size_mib      = 2048
  
}
