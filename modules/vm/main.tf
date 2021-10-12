terraform {
    required_version = ">= 0.12"
}

data "nutanix_clusters" "ocp-cluster" {}


resource "nutanix_virtual_machine" "ocp_nodes" {

  name                 = var.vm_name
  cluster_uuid         = data.nutanix_clusters.clusters.entities.0.metadata.uuid
  num_vcpus_per_socket = "4"
  num_sockets          = "2"
  memory_size_mib      = 65536

  disk_list {
    data_source_reference = {
      kind = "image"
      uuid = nutanix_image.rhcos_image.id
    }
  }

  disk_list {
    disk_size_mib = 122880
    device_properties {
      device_type = "DISK"
      disk_address = {
        "adapter_type" = "SCSI"
        "device_index" = "1"
      }
    }
  }

  nic_list {
    subnet_uuid = data.nutanix_subnet.subnet.metadata.uuid
  }
}