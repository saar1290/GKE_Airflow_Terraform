output "GKE_Cluster_Name" {
  value       = google_container_cluster.primary.name
  description = "GKE Cluster Name"
}

output "GKE_Cluster_IP_Address" {
  value       = google_container_cluster.primary.endpoint
  description = "GKE Cluster IP Address"
}

output "AirFlow_UI_Password" {
  value       = "admin"
}

output "AirFlow_UI_User" {
  value       = "user"
}

output "Airflow_UI" {
  value       = "http://${kubernetes_service.primary.status.0.load_balancer.0.ingress.0.ip}:8080"
  description = "Airflow UI"
}

output "Cluster_Region" {
  value       = var.region
  description = "GCloud Region"
}

output "Cluster_Project" {
  value       = var.project_id
  description = "GCloud Project ID"
}