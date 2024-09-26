locals {
  jfrog_token = get_env("JFROG_TOKEN", "default-value-if-not-set")
}

# remote_state {
#   backend = "remote"
#   config = {
#     hostname = "gurpreet1.jfrog.io"
#     organization = "tf2"
#     token = local.jfrog_token
# }
# Generite file with provider`s (vSphere) data
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region = "us-east-1"
}
EOF
}
