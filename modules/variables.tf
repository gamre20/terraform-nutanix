variable "nutanix_username" {
  description = "username"
  default     = "admin"
}

variable "nutanix_passord" {
  description = "password"
  default     = "nx2Tech291!"
}

variable "nutanix_endpoint" {
  default     = "10.38.62.37"
}

variable "nutanix_port" {
  default     = "9440"
}

variable "nutanix_vnic" {
  default     = "de87ab87-4ee1-4921-9064-1139c33937c7"
}

variable "vm_name" {
  description = "VM's Names"
  type = string
}
