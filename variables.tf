variable "metrics" {
  description = "Map of LaunchDarkly metrics to create"
  type = map(object({
    project_key = string
    key         = string
    name        = string
    description = string
    kind        = string
    tags        = list(string)
    urls        = list(object({
      kind      = string
      substring = string
    }))
    selector = optional(string)
  }))
}

variable "launchdarkly_access_token" {
  description = "Your LaunchDarkly personal access token"
  type        = string
  sensitive   = true
}