data "nutanix_clusters" "clusters" {}

resource "nutanix_virtual_machine" "vm1" {
  name = "test-dou"
  cluster_uuid = data.nutanix_clusters.clusters.entities.0.metadata.uuid

  categories {
        name   = "Environment"
    value  = "Staging"
    }


  num_vcpus_per_socket = 1
  num_sockets          = 1
  memory_size_mib      = 2048
}
