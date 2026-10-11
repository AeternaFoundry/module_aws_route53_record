variable "route53_records" {
  description = <<EOT
Map of route53_records, attributes below
Required:
    - name
    - type
    - zone_id
Optional:
    - allow_overwrite
    - health_check_id
    - multivalue_answer_routing_policy
    - records
    - set_identifier
    - ttl
    - alias (block):
        - evaluate_target_health (required)
        - name (required)
        - zone_id (required)
    - cidr_routing_policy (block):
        - collection_id (required)
        - location_name (required)
    - failover_routing_policy (block):
        - type (required)
    - geolocation_routing_policy (block):
        - continent (optional)
        - country (optional)
        - subdivision (optional)
    - geoproximity_routing_policy (block):
        - aws_region (optional)
        - bias (optional)
        - coordinates (optional, block):
            - latitude (required)
            - longitude (required)
        - local_zone_group (optional)
    - latency_routing_policy (block):
        - region (required)
    - weighted_routing_policy (block):
        - weight (required)
EOT

  type = map(object({
    name                             = string
    type                             = string
    zone_id                          = string
    allow_overwrite                  = optional(bool)
    health_check_id                  = optional(string)
    multivalue_answer_routing_policy = optional(bool)
    records                          = optional(set(string))
    set_identifier                   = optional(string)
    ttl                              = optional(number)
    alias = optional(object({
      evaluate_target_health = bool
      name                   = string
      zone_id                = string
    }))
    cidr_routing_policy = optional(object({
      collection_id = string
      location_name = string
    }))
    failover_routing_policy = optional(object({
      type = string
    }))
    geolocation_routing_policy = optional(object({
      continent   = optional(string)
      country     = optional(string)
      subdivision = optional(string)
    }))
    geoproximity_routing_policy = optional(object({
      aws_region = optional(string)
      bias       = optional(number)
      coordinates = optional(list(object({
        latitude  = string
        longitude = string
      })))
      local_zone_group = optional(string)
    }))
    latency_routing_policy = optional(object({
      region = string
    }))
    weighted_routing_policy = optional(object({
      weight = number
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_records : (
        v.geoproximity_routing_policy == null || (v.geoproximity_routing_policy.bias == null || (v.geoproximity_routing_policy.bias >= -99 && v.geoproximity_routing_policy.bias <= 99))
      )
    ])
    error_message = "must be between -99 and 99"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

