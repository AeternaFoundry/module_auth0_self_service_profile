output "self_service_profiles_id" {
  description = "Map of id values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no id are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "self_service_profiles_allowed_strategies" {
  description = "Map of allowed_strategies values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no allowed_strategies are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.allowed_strategies if v.allowed_strategies != null && length(v.allowed_strategies) > 0 }
}
output "self_service_profiles_branding" {
  description = "Map of branding values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no branding are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => one(v.branding) if v.branding != null && length(v.branding) > 0 }
}
output "self_service_profiles_created_at" {
  description = "Map of created_at values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no created_at are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "self_service_profiles_description" {
  description = "Map of description values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no description are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.description if v.description != null && length(v.description) > 0 }
}
output "self_service_profiles_name" {
  description = "Map of name values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no name are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "self_service_profiles_updated_at" {
  description = "Map of updated_at values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no updated_at are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.updated_at if v.updated_at != null && length(v.updated_at) > 0 }
}
output "self_service_profiles_user_attribute_profile_id" {
  description = "Map of user_attribute_profile_id values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no user_attribute_profile_id are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.user_attribute_profile_id if v.user_attribute_profile_id != null && length(v.user_attribute_profile_id) > 0 }
}
output "self_service_profiles_user_attributes" {
  description = "Map of user_attributes values across all self_service_profiles, keyed the same as var.self_service_profiles except keys with no user_attributes are omitted"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.user_attributes if v.user_attributes != null && length(v.user_attributes) > 0 }
}

