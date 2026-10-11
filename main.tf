data "datadog_logs_indexes" "logs_indexes_lookup" {
  for_each = var.logs_indexes_lookup

}

