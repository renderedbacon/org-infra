generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  
  contents = <<EOF
terraform {
    cloud {
        organization = "rendered-bacon"

        workspaces {
            name = "${path_relative_to_include()}"
        }
    }
}
  EOF
}

terraform_version_constraint  = ">= 1.3.0"
terragrunt_version_constraint = ">= 0.38.12"