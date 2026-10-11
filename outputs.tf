output "storage_bucket_objects_lookup_id" {
  description = "Map of id values across all storage_bucket_objects_lookup, keyed the same as var.storage_bucket_objects_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_storage_bucket_objects.storage_bucket_objects_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_bucket_objects_lookup_bucket" {
  description = "Map of bucket values across all storage_bucket_objects_lookup, keyed the same as var.storage_bucket_objects_lookup except keys with no bucket are omitted"
  value       = { for k, v in data.google_storage_bucket_objects.storage_bucket_objects_lookup : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "storage_bucket_objects_lookup_bucket_objects" {
  description = "Map of bucket_objects values across all storage_bucket_objects_lookup, keyed the same as var.storage_bucket_objects_lookup except keys with no bucket_objects are omitted"
  value       = { for k, v in data.google_storage_bucket_objects.storage_bucket_objects_lookup : k => v.bucket_objects if v.bucket_objects != null && length(v.bucket_objects) > 0 }
}
output "storage_bucket_objects_lookup_match_glob" {
  description = "Map of match_glob values across all storage_bucket_objects_lookup, keyed the same as var.storage_bucket_objects_lookup except keys with no match_glob are omitted"
  value       = { for k, v in data.google_storage_bucket_objects.storage_bucket_objects_lookup : k => v.match_glob if v.match_glob != null && length(v.match_glob) > 0 }
}
output "storage_bucket_objects_lookup_prefix" {
  description = "Map of prefix values across all storage_bucket_objects_lookup, keyed the same as var.storage_bucket_objects_lookup except keys with no prefix are omitted"
  value       = { for k, v in data.google_storage_bucket_objects.storage_bucket_objects_lookup : k => v.prefix if v.prefix != null && length(v.prefix) > 0 }
}

