output "region" {
  value       = var.region
  description = "GCloud Region"
}

output "project_id" {
  value       = var.project
  description = "GCloud Project ID"
}

output "kubernetes_cluster_name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "kubernetes_cluster_host" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster Host"
}

output "kubernetes_dashboard_service_name" {
  value = kubernetes_service.kubernetes_dashboard.metadata.0.name
}

output "kubernetes_dashboard_service_namespace" {
  value = kubernetes_service.kubernetes_dashboard.metadata.0.namespace
}

output "kubernetes_metrics_scraper_service_name" {
  value = kubernetes_service.kubernetes_metrics_scraper.metadata.0.name
}

output "kubernetes_metrics_scraper_service_namespace" {
  value = kubernetes_service.kubernetes_metrics_scraper.metadata.0.namespace
}
