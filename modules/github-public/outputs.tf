output "github_repo_names" {
  description = "List of repo names in repo name format (kebab)."
  value       = [for name in module.repo_names : name.kebab]
}
