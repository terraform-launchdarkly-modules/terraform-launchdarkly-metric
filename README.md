# Module name: terraform-launchdarkly-metric

A reusable Terraform module to manage metrics using launchdarkly provider.

This modules allows you to manage metrics within a LaunchDarkly organization.
---

## Features

- Create and manage LaunchDarkly metrics
- Support for click, pageview, and custom metrics
- Configure metric analysis methods, including mean and percentile
- Associate metrics with projects and experiments
- Define URL matching rules for pageview and click metrics
- Configure numeric custom metrics with units and aggregation types
- Manage metric metadata such as descriptions, tags, and maintainers
- Compatible with Terraform `1.x` and the `launchdarkly` provider

---

## Usage

<!-- Adjust the example to match your module structure -->

```hcl
module "metric" {
  source = "terraform-launchdarkly-modules/metric/launchdarkly"

  project_key = "example-project"
  project_name = "Example Project"
  tags = ["terraform"]
metrics = {
  metric_1 = {
    project_key = "1project"
    key         = "pageview-metric"
    name        = "Pageview Metric"
    description = "Tracks page views"
    kind        = "pageview"
    tags        = ["marketing", "analytics"]
    urls = [
      {
        kind      = "substring"
        substring = "/landing"
      },
      {
        kind      = "substring"
        substring = "/product"
      }
    ]
  }

  metric_2 = {
    project_key = "1project"
    key         = "click-metric"
    name        = "Click Metric"
    description = "Tracks button clicks"
    kind        = "click"
    selector    = ".signup-button"
    tags        = ["interaction"]
    urls = [
      {
        kind      = "substring"
        substring = "/signup"
      }
    ]
  }
}
}
```

<!-- BEGIN_TF_DOCS -->
## Resources

| Name | Type |
|------|------|

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_launchdarkly_access_token"></a> [launchdarkly\_access\_token](#input\_launchdarkly\_access\_token) | Your LaunchDarkly personal access token | `string` | n/a | yes |
| <a name="input_metrics"></a> [metrics](#input\_metrics) | Map of LaunchDarkly metrics to create | <pre>map(object({<br/>    project_key = string<br/>    key         = string<br/>    name        = string<br/>    description = string<br/>    kind        = string<br/>    tags        = list(string)<br/>    urls        = list(object({<br/>      kind      = string<br/>      substring = string<br/>    }))<br/>    selector = optional(string)<br/>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_metric_ids"></a> [metric\_ids](#output\_metric\_ids) | n/a |
<!-- END_TF_DOCS -->