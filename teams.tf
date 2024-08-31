resource "sentry_team" "this" {
  for_each = var.teams

  organization = local.org_id
  slug         = each.value.slug
  name         = each.value.name
}
