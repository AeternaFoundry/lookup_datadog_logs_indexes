output "logs_indexes_lookup_id" {
  description = "Map of id values across all logs_indexes_lookup, keyed the same as var.logs_indexes_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_logs_indexes.logs_indexes_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_indexes_lookup_logs_indexes" {
  description = "Map of logs_indexes values across all logs_indexes_lookup, keyed the same as var.logs_indexes_lookup except keys with no logs_indexes are omitted"
  value       = { for k, v in data.datadog_logs_indexes.logs_indexes_lookup : k => v.logs_indexes if v.logs_indexes != null && length(v.logs_indexes) > 0 }
}

