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