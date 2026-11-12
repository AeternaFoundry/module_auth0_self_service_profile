output "self_service_profiles_id" {
  description = "Map of id values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.id }
}
output "self_service_profiles_allowed_strategies" {
  description = "Map of allowed_strategies values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.allowed_strategies }
}
output "self_service_profiles_branding" {
  description = "Map of branding values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => one(v.branding) }
}
output "self_service_profiles_created_at" {
  description = "Map of created_at values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.created_at }
}
output "self_service_profiles_description" {
  description = "Map of description values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.description }
}
output "self_service_profiles_name" {
  description = "Map of name values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.name }
}
output "self_service_profiles_updated_at" {
  description = "Map of updated_at values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.updated_at }
}
output "self_service_profiles_user_attribute_profile_id" {
  description = "Map of user_attribute_profile_id values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.user_attribute_profile_id }
}
output "self_service_profiles_user_attributes" {
  description = "Map of user_attributes values across all self_service_profiles, keyed the same as var.self_service_profiles"
  value       = { for k, v in auth0_self_service_profile.self_service_profiles : k => v.user_attributes }
}

