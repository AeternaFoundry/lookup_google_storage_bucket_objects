data "google_storage_bucket_objects" "storage_bucket_objects_lookup" {
  for_each = var.storage_bucket_objects_lookup

  bucket     = each.value.bucket
  match_glob = each.value.match_glob
  prefix     = each.value.prefix
}

