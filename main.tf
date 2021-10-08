terraform {
  required_providers {
   nutanix = {
      source = "nutanix/nutanix"
   }

  }
}


module "create_ocp_vm" {
    source = "modules/rhcos_vm.tf"
    name = "master-0"   
}

module "create_ocp_vm" {
    source = "modules/rhcos_vm.tf"
    name = "master-1"   
}

# module "master-2" {
#     source = "modules/rhcos_vm.tf"    
# }

# module "worker-0" {
#     source = "modules/rhcos_vm.tf"    
# }

# module "worker-1" {
#     source = "modules/rhcos_vm.tf"    
# }

# module "worker-2" {
#     source = "modules/rhcos_vm.tf"    
# }
