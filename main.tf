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



data "nutanix_clusters" "clusters" {}

data "nutanix_subnets" "subnets" {}


resource "nutanix_virtual_machine" "vm1" {

  name                 = "ocp-master-0"
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

resource "nutanix_virtual_machine" "vm2" {

  name                 = "ocp-master-1"
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

resource "nutanix_virtual_machine" "vm3" {

  name                 = "ocp-master-2"
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

resource "nutanix_virtual_machine" "vm4" {

  name                 = "ocp-worker-0"
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

resource "nutanix_virtual_machine" "vm5" {

  name                 = "ocp-worker-1"
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

resource "nutanix_virtual_machine" "vm6" {

  name                 = "ocp-worker-2"
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
