module "repo_names" {
  source  = "renderedbacon/case/string"
  version = "1.3.0"

  for_each = toset(var.repos)

  raw = each.value
}

module "github_repos" {
  source = "git::https://github.com/renderedbacon/terraform-github-repository.git"

  for_each = toset(var.repos)

  name = module.repo_names[each.key].kebab
}
