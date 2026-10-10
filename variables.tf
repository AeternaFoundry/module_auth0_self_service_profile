variable "self_service_profiles" {
  description = <<EOT
Map of self_service_profiles, attributes below
Required:
    - name
Optional:
    - allowed_strategies
    - description
    - user_attribute_profile_id
    - branding (block):
        - colors (optional, block):
            - primary (optional)
        - logo_url (optional)
    - user_attributes (block):
        - description (required)
        - is_optional (required)
        - name (required)
EOT

  type = map(object({
    name                      = string
    allowed_strategies        = optional(set(string))
    description               = optional(string)
    user_attribute_profile_id = optional(string)
    branding = optional(object({
      colors = optional(object({
        primary = optional(string)
      }))
      logo_url = optional(string)
    }))
    user_attributes = optional(list(object({
      description = string
      is_optional = bool
      name        = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.self_service_profiles : (
        v.user_attributes == null || (length(v.user_attributes) <= 20)
      )
    ])
    error_message = "Each user_attributes list must contain at most 20 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.self_service_profiles : (
        length(v.name) >= 1 && length(v.name) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.self_service_profiles : (
        v.description == null || (length(v.description) >= 1 && length(v.description) <= 140)
      )
    ])
    error_message = "must be between 1 and 140 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.self_service_profiles : (
        v.user_attributes == null || alltrue([for item in v.user_attributes : (length(item.name) >= 1 && length(item.name) <= 255)])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.self_service_profiles : (
        v.user_attributes == null || alltrue([for item in v.user_attributes : (length(item.description) >= 1 && length(item.description) <= 255)])
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

