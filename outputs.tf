output "container_attached_clusters_id" {
  description = "Map of id values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no id are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_attached_clusters_annotations" {
  description = "Map of annotations values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no annotations are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.annotations if v.annotations != null && length(v.annotations) > 0 }
}
output "container_attached_clusters_authorization" {
  description = "Map of authorization values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no authorization are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => one(v.authorization) if v.authorization != null && length(v.authorization) > 0 }
}
output "container_attached_clusters_binary_authorization" {
  description = "Map of binary_authorization values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no binary_authorization are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => one(v.binary_authorization) if v.binary_authorization != null && length(v.binary_authorization) > 0 }
}
output "container_attached_clusters_cluster_region" {
  description = "Map of cluster_region values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no cluster_region are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.cluster_region if v.cluster_region != null && length(v.cluster_region) > 0 }
}
output "container_attached_clusters_create_time" {
  description = "Map of create_time values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no create_time are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "container_attached_clusters_deletion_policy" {
  description = "Map of deletion_policy values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no deletion_policy are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "container_attached_clusters_description" {
  description = "Map of description values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no description are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.description if v.description != null && length(v.description) > 0 }
}
output "container_attached_clusters_distribution" {
  description = "Map of distribution values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no distribution are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.distribution if v.distribution != null && length(v.distribution) > 0 }
}
output "container_attached_clusters_effective_annotations" {
  description = "Map of effective_annotations values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no effective_annotations are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.effective_annotations if v.effective_annotations != null && length(v.effective_annotations) > 0 }
}
output "container_attached_clusters_errors" {
  description = "Map of errors values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no errors are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.errors if v.errors != null && length(v.errors) > 0 }
}
output "container_attached_clusters_fleet" {
  description = "Map of fleet values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no fleet are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => one(v.fleet) if v.fleet != null && length(v.fleet) > 0 }
}
output "container_attached_clusters_kubernetes_version" {
  description = "Map of kubernetes_version values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no kubernetes_version are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.kubernetes_version if v.kubernetes_version != null && length(v.kubernetes_version) > 0 }
}
output "container_attached_clusters_location" {
  description = "Map of location values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no location are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.location if v.location != null && length(v.location) > 0 }
}
output "container_attached_clusters_logging_config" {
  description = "Map of logging_config values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no logging_config are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => one(v.logging_config) if v.logging_config != null && length(v.logging_config) > 0 }
}
output "container_attached_clusters_monitoring_config" {
  description = "Map of monitoring_config values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no monitoring_config are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => one(v.monitoring_config) if v.monitoring_config != null && length(v.monitoring_config) > 0 }
}
output "container_attached_clusters_name" {
  description = "Map of name values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no name are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_attached_clusters_oidc_config" {
  description = "Map of oidc_config values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no oidc_config are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => one(v.oidc_config) if v.oidc_config != null && length(v.oidc_config) > 0 }
}
output "container_attached_clusters_platform_version" {
  description = "Map of platform_version values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no platform_version are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.platform_version if v.platform_version != null && length(v.platform_version) > 0 }
}
output "container_attached_clusters_project" {
  description = "Map of project values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no project are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.project if v.project != null && length(v.project) > 0 }
}
output "container_attached_clusters_proxy_config" {
  description = "Map of proxy_config values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no proxy_config are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => one(v.proxy_config) if v.proxy_config != null && length(v.proxy_config) > 0 }
}
output "container_attached_clusters_reconciling" {
  description = "Map of reconciling values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no reconciling are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.reconciling if v.reconciling != null }
}
output "container_attached_clusters_security_posture_config" {
  description = "Map of security_posture_config values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no security_posture_config are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => one(v.security_posture_config) if v.security_posture_config != null && length(v.security_posture_config) > 0 }
}
output "container_attached_clusters_state" {
  description = "Map of state values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no state are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.state if v.state != null && length(v.state) > 0 }
}
output "container_attached_clusters_uid" {
  description = "Map of uid values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no uid are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "container_attached_clusters_update_time" {
  description = "Map of update_time values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no update_time are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "container_attached_clusters_workload_identity_config" {
  description = "Map of workload_identity_config values across all container_attached_clusters, keyed the same as var.container_attached_clusters except keys with no workload_identity_config are omitted"
  value       = { for k, v in google_container_attached_cluster.container_attached_clusters : k => v.workload_identity_config if v.workload_identity_config != null && length(v.workload_identity_config) > 0 }
}

