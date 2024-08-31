resource "sentry_project" "this" {
  depends_on = [sentry_team.this]
  for_each   = var.projects

  organization = local.org_id
  slug         = each.value.slug
  name         = each.value.name
  teams        = each.value.teams
  platform     = each.value.platform
  default_key  = false
}

resource "sentry_key" "this" {
  for_each = var.projects

  organization = local.org_id
  project      = sentry_project.this[each.key].id
  name         = "default"
}
