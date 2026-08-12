variable "accessanalyzer_analyzers" {
  description = <<EOT
Map of accessanalyzer_analyzers, attributes below
Required:
    - analyzer_name
Optional:
    - region
    - tags
    - tags_all
    - type
    - configuration (block):
        - internal_access (optional, block):
            - analysis_rule (optional, block):
                - inclusion (optional, block):
                    - account_ids (optional)
                    - resource_arns (optional)
                    - resource_types (optional)
        - unused_access (optional, block):
            - analysis_rule (optional, block):
                - exclusion (optional, block):
                    - account_ids (optional)
                    - resource_tags (optional)
            - unused_access_age (optional)
EOT

  type = map(object({
    analyzer_name = string
    region        = optional(string)
    tags          = optional(map(string))
    tags_all      = optional(map(string))
    type          = optional(string)
    configuration = optional(object({
      internal_access = optional(object({
        analysis_rule = optional(object({
          inclusion = optional(list(object({
            account_ids    = optional(list(string))
            resource_arns  = optional(list(string))
            resource_types = optional(list(string))
          })))
        }))
      }))
      unused_access = optional(object({
        analysis_rule = optional(object({
          exclusion = optional(list(object({
            account_ids   = optional(list(string))
            resource_tags = optional(list(any))
          })))
        }))
        unused_access_age = optional(number)
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.accessanalyzer_analyzers : (
        (length(v.analyzer_name) >= 1 && length(v.analyzer_name) <= 255) && (can(regex("^[A-Za-z][0-9A-Za-z_.-]*$", v.analyzer_name)))
      )
    ])
    error_message = "all of: must be between 1 and 255 characters; must begin with a letter and contain only alphanumeric, underscore, period, or hyphen characters"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

