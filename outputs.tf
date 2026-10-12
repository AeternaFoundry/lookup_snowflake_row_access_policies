output "row_access_policies_lookup_id" {
  description = "Map of id values across all row_access_policies_lookup, keyed the same as var.row_access_policies_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_row_access_policies.row_access_policies_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "row_access_policies_lookup_in" {
  description = "Map of in values across all row_access_policies_lookup, keyed the same as var.row_access_policies_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_row_access_policies.row_access_policies_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "row_access_policies_lookup_like" {
  description = "Map of like values across all row_access_policies_lookup, keyed the same as var.row_access_policies_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_row_access_policies.row_access_policies_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "row_access_policies_lookup_limit" {
  description = "Map of limit values across all row_access_policies_lookup, keyed the same as var.row_access_policies_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_row_access_policies.row_access_policies_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "row_access_policies_lookup_row_access_policies" {
  description = "Map of row_access_policies values across all row_access_policies_lookup, keyed the same as var.row_access_policies_lookup except keys with no row_access_policies are omitted"
  value       = { for k, v in data.snowflake_row_access_policies.row_access_policies_lookup : k => v.row_access_policies if v.row_access_policies != null && length(v.row_access_policies) > 0 }
}
output "row_access_policies_lookup_with_describe" {
  description = "Map of with_describe values across all row_access_policies_lookup, keyed the same as var.row_access_policies_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_row_access_policies.row_access_policies_lookup : k => v.with_describe if v.with_describe != null }
}

