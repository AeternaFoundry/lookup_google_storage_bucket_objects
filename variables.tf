variable "storage_bucket_objects_lookup" {
  description = <<EOT
Map of storage_bucket_objects_lookup, attributes below
Required:
    - bucket
Optional:
    - match_glob
    - prefix
EOT

  type = map(object({
    bucket     = string
    match_glob = optional(string)
    prefix     = optional(string)
  }))
}

