include "root" {
  path = find_in_parent_folders()
}

terraform {
  source = "../..//modules/github-public"
}

inputs = {
  repos = [
    "Terraform String Case",
    "Terraform GitHub Repository",
  ]
}