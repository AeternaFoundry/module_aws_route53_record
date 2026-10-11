output "route53_records_id" {
  description = "Map of id values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_records_alias" {
  description = "Map of alias values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => one(v.alias) if v.alias != null && length(v.alias) > 0 }
}
output "route53_records_allow_overwrite" {
  description = "Map of allow_overwrite values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.allow_overwrite if v.allow_overwrite != null }
}
output "route53_records_cidr_routing_policy" {
  description = "Map of cidr_routing_policy values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => one(v.cidr_routing_policy) if v.cidr_routing_policy != null && length(v.cidr_routing_policy) > 0 }
}
output "route53_records_failover_routing_policy" {
  description = "Map of failover_routing_policy values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => one(v.failover_routing_policy) if v.failover_routing_policy != null && length(v.failover_routing_policy) > 0 }
}
output "route53_records_fqdn" {
  description = "Map of fqdn values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.fqdn if v.fqdn != null && length(v.fqdn) > 0 }
}
output "route53_records_geolocation_routing_policy" {
  description = "Map of geolocation_routing_policy values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => one(v.geolocation_routing_policy) if v.geolocation_routing_policy != null && length(v.geolocation_routing_policy) > 0 }
}
output "route53_records_geoproximity_routing_policy" {
  description = "Map of geoproximity_routing_policy values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => one(v.geoproximity_routing_policy) if v.geoproximity_routing_policy != null && length(v.geoproximity_routing_policy) > 0 }
}
output "route53_records_health_check_id" {
  description = "Map of health_check_id values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.health_check_id if v.health_check_id != null && length(v.health_check_id) > 0 }
}
output "route53_records_latency_routing_policy" {
  description = "Map of latency_routing_policy values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => one(v.latency_routing_policy) if v.latency_routing_policy != null && length(v.latency_routing_policy) > 0 }
}
output "route53_records_multivalue_answer_routing_policy" {
  description = "Map of multivalue_answer_routing_policy values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.multivalue_answer_routing_policy if v.multivalue_answer_routing_policy != null }
}
output "route53_records_name" {
  description = "Map of name values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route53_records_records" {
  description = "Map of records values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.records if v.records != null && length(v.records) > 0 }
}
output "route53_records_set_identifier" {
  description = "Map of set_identifier values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.set_identifier if v.set_identifier != null && length(v.set_identifier) > 0 }
}
output "route53_records_ttl" {
  description = "Map of ttl values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.ttl if v.ttl != null }
}
output "route53_records_type" {
  description = "Map of type values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.type if v.type != null && length(v.type) > 0 }
}
output "route53_records_weighted_routing_policy" {
  description = "Map of weighted_routing_policy values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => one(v.weighted_routing_policy) if v.weighted_routing_policy != null && length(v.weighted_routing_policy) > 0 }
}
output "route53_records_zone_id" {
  description = "Map of zone_id values across all route53_records, keyed the same as var.route53_records"
  value       = { for k, v in aws_route53_record.route53_records : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

