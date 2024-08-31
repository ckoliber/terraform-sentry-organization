variable "id" {
  type        = string
  default     = null
  sensitive   = false
  description = "Organization ID"
}

variable "slug" {
  type        = string
  default     = ""
  sensitive   = false
  description = "Organization Slug"
}

variable "name" {
  type        = string
  default     = ""
  sensitive   = false
  description = "Organization Name"
}

variable "teams" {
  type = map(object({
    slug = string
    name = string
  }))
  default     = {}
  sensitive   = false
  description = "Project Teams"
}

variable "projects" {
  type = map(object({
    slug     = string
    name     = string
    teams    = optional(list(string), [])
    platform = optional(string)
  }))
  default     = {}
  sensitive   = false
  description = "Project Projects"
}
