locals {
  jfrog_token = get_env("JFROG_TOKEN", "default-value-if-not-set")
}

remote_state {
  backend = "remote"
  config = {
    hostname = "preetinfra.jfrog.io"
    organization = "dp-infra-prod"
    token = local.jfrog_token
}
}

terraform {
  source = "../../terragrunt-vsphere-harness-modules"
}
include "root" {
  path = find_in_parent_folders()
}

# inputs = {
#   # Add your input variables for the module here, e.g.:
#   vm_name = "demo2"
#   vm_cpu = 2
#   vm_memory = 1024
#   vm_disk_size = 30
# }