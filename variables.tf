variable "container_attached_clusters" {
  description = <<EOT
Map of container_attached_clusters, attributes below
Required:
    - distribution
    - location
    - name
    - platform_version
    - fleet (block):
        - project (required)
    - oidc_config (block):
        - issuer_url (required)
        - jwks (optional)
Optional:
    - annotations
    - deletion_policy
    - description
    - project
    - authorization (block):
        - admin_groups (optional)
        - admin_users (optional)
    - binary_authorization (block):
        - evaluation_mode (optional)
    - logging_config (block):
        - component_config (optional, block):
            - enable_components (optional)
    - monitoring_config (block):
        - managed_prometheus_config (optional, block):
            - enabled (optional)
    - proxy_config (block):
        - kubernetes_secret (optional, block):
            - name (required)
            - namespace (required)
    - security_posture_config (block):
        - vulnerability_mode (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    distribution     = string
    location         = string
    name             = string
    platform_version = string
    annotations      = optional(map(string))
    deletion_policy  = optional(string)
    description      = optional(string)
    project          = optional(string)
    fleet = object({
      project = string
    })
    oidc_config = object({
      issuer_url = string
      jwks       = optional(string)
    })
    authorization = optional(object({
      admin_groups = optional(list(string))
      admin_users  = optional(list(string))
    }))
    binary_authorization = optional(object({
      evaluation_mode = optional(string)
    }))
    logging_config = optional(object({
      component_config = optional(object({
        enable_components = optional(list(string))
      }))
    }))
    monitoring_config = optional(object({
      managed_prometheus_config = optional(object({
        enabled = optional(bool)
      }))
    }))
    proxy_config = optional(object({
      kubernetes_secret = optional(object({
        name      = string
        namespace = string
      }))
    }))
    security_posture_config = optional(object({
      vulnerability_mode = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

