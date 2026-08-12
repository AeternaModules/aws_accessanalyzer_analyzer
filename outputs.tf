output "accessanalyzer_analyzers_id" {
  description = "Map of id values across all accessanalyzer_analyzers, keyed the same as var.accessanalyzer_analyzers"
  value       = { for k, v in aws_accessanalyzer_analyzer.accessanalyzer_analyzers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "accessanalyzer_analyzers_analyzer_name" {
  description = "Map of analyzer_name values across all accessanalyzer_analyzers, keyed the same as var.accessanalyzer_analyzers"
  value       = { for k, v in aws_accessanalyzer_analyzer.accessanalyzer_analyzers : k => v.analyzer_name if v.analyzer_name != null && length(v.analyzer_name) > 0 }
}
output "accessanalyzer_analyzers_arn" {
  description = "Map of arn values across all accessanalyzer_analyzers, keyed the same as var.accessanalyzer_analyzers"
  value       = { for k, v in aws_accessanalyzer_analyzer.accessanalyzer_analyzers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "accessanalyzer_analyzers_configuration" {
  description = "Map of configuration values across all accessanalyzer_analyzers, keyed the same as var.accessanalyzer_analyzers"
  value       = { for k, v in aws_accessanalyzer_analyzer.accessanalyzer_analyzers : k => v.configuration if v.configuration != null && length(v.configuration) > 0 }
}
output "accessanalyzer_analyzers_region" {
  description = "Map of region values across all accessanalyzer_analyzers, keyed the same as var.accessanalyzer_analyzers"
  value       = { for k, v in aws_accessanalyzer_analyzer.accessanalyzer_analyzers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "accessanalyzer_analyzers_tags" {
  description = "Map of tags values across all accessanalyzer_analyzers, keyed the same as var.accessanalyzer_analyzers"
  value       = { for k, v in aws_accessanalyzer_analyzer.accessanalyzer_analyzers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "accessanalyzer_analyzers_tags_all" {
  description = "Map of tags_all values across all accessanalyzer_analyzers, keyed the same as var.accessanalyzer_analyzers"
  value       = { for k, v in aws_accessanalyzer_analyzer.accessanalyzer_analyzers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "accessanalyzer_analyzers_type" {
  description = "Map of type values across all accessanalyzer_analyzers, keyed the same as var.accessanalyzer_analyzers"
  value       = { for k, v in aws_accessanalyzer_analyzer.accessanalyzer_analyzers : k => v.type if v.type != null && length(v.type) > 0 }
}

