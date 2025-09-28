launchdarkly_access_token = "api-f4127cf4-08bd-487d-bcf2-89952f566282"

metrics = {
  metric_1 = {
    project_key = "project-1"
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
    project_key = "project-2"
    key         = "click-metric"
    name        = "Click Metric"
    description = "Tracks button clicks"
    kind        = "click"
    tags        = ["interaction"]
    urls = [
      {
        kind      = "substring"
        substring = "/signup"
      }
    ]
  }
}
