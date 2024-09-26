terraform {
  backend "remote" {
      workspaces {
        name = "dpp-vsphere"
            # prefix = "my-prefix-"
        }
  } 
  }
module "my_bucket" {
  source = "./vm_module"
  bucket_name = "thedemotxchdbucket"
}