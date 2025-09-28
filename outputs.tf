output "metric_ids" {
  value = { for k, v in launchdarkly_metric.this : k => v.id }
}
