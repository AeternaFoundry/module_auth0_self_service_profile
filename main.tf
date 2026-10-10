resource "auth0_self_service_profile" "self_service_profiles" {
  for_each = var.self_service_profiles

  name                      = each.value.name
  allowed_strategies        = each.value.allowed_strategies
  description               = each.value.description
  user_attribute_profile_id = each.value.user_attribute_profile_id

  dynamic "branding" {
    for_each = each.value.branding != null ? [each.value.branding] : []
    content {
      dynamic "colors" {
        for_each = branding.value.colors != null ? [branding.value.colors] : []
        content {
          primary = colors.value.primary
        }
      }
      logo_url = branding.value.logo_url
    }
  }

  dynamic "user_attributes" {
    for_each = each.value.user_attributes != null ? each.value.user_attributes : []
    content {
      description = user_attributes.value.description
      is_optional = user_attributes.value.is_optional
      name        = user_attributes.value.name
    }
  }
}

