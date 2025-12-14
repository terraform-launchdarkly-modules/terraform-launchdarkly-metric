resource "launchdarkly_metric" "this" {
  for_each = var.metrics

  project_key = each.value.project_key
  key         = each.value.key
  name        = each.value.name
  description = each.value.description
  kind        = each.value.kind
  tags        = each.value.tags

  dynamic "urls" {
    for_each = each.value.urls
    content {
      kind      = urls.value.kind
      substring = urls.value.substring
    }
  }

  # Only add selector if it's defined and kind == "click"
  selector = each.value.kind == "click" && contains(keys(each.value), "selector") ? each.value.selector : null
}
