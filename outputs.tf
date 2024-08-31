output "id" {
  value       = local.org_id
  sensitive   = false
  description = "Organization ID"
}

output "teams" {
  value       = { for key, val in sentry_team.this : key => val.id }
  sensitive   = false
  description = "Organization Teams"
}

output "projects" {
  value = {
    for key, val in sentry_project.this : key => {
      id         = val.id
      dsn_csp    = sentry_key.this[key].dsn_csp
      dsn_public = sentry_key.this[key].dsn_public
      dsn_secret = sentry_key.this[key].dsn_secret
    }
  }
  sensitive   = false
  description = "Organization Projects"
}
