resource "sentry_organization" "this" {
  count = var.id == null ? 1 : 0

  slug        = var.slug
  name        = var.name
  agree_terms = true
}

locals {
  org_id = try(sentry_organization.this[0].id, var.id)
}
