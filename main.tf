resource "google_container_attached_cluster" "container_attached_clusters" {
  for_each = var.container_attached_clusters

  distribution     = each.value.distribution
  location         = each.value.location
  name             = each.value.name
  platform_version = each.value.platform_version
  annotations      = each.value.annotations
  deletion_policy  = each.value.deletion_policy
  description      = each.value.description
  project          = each.value.project

  fleet {
    project = each.value.fleet.project
  }

  oidc_config {
    issuer_url = each.value.oidc_config.issuer_url
    jwks       = each.value.oidc_config.jwks
  }

  dynamic "authorization" {
    for_each = each.value.authorization != null ? [each.value.authorization] : []
    content {
      admin_groups = authorization.value.admin_groups
      admin_users  = authorization.value.admin_users
    }
  }

  dynamic "binary_authorization" {
    for_each = each.value.binary_authorization != null ? [each.value.binary_authorization] : []
    content {
      evaluation_mode = binary_authorization.value.evaluation_mode
    }
  }

  dynamic "logging_config" {
    for_each = each.value.logging_config != null ? [each.value.logging_config] : []
    content {
      dynamic "component_config" {
        for_each = logging_config.value.component_config != null ? [logging_config.value.component_config] : []
        content {
          enable_components = component_config.value.enable_components
        }
      }
    }
  }

  dynamic "monitoring_config" {
    for_each = each.value.monitoring_config != null ? [each.value.monitoring_config] : []
    content {
      dynamic "managed_prometheus_config" {
        for_each = monitoring_config.value.managed_prometheus_config != null ? [monitoring_config.value.managed_prometheus_config] : []
        content {
          enabled = managed_prometheus_config.value.enabled
        }
      }
    }
  }

  dynamic "proxy_config" {
    for_each = each.value.proxy_config != null ? [each.value.proxy_config] : []
    content {
      dynamic "kubernetes_secret" {
        for_each = proxy_config.value.kubernetes_secret != null ? [proxy_config.value.kubernetes_secret] : []
        content {
          name      = kubernetes_secret.value.name
          namespace = kubernetes_secret.value.namespace
        }
      }
    }
  }

  dynamic "security_posture_config" {
    for_each = each.value.security_posture_config != null ? [each.value.security_posture_config] : []
    content {
      vulnerability_mode = security_posture_config.value.vulnerability_mode
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

