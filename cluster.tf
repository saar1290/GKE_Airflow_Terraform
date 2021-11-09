data "google_client_config" "current" {}

resource "google_container_cluster" "primary" {
    name        = var.cluster_name
    project     = var.project_id
    location    = var.region
    description = "Demo GKE Cluster" 
    initial_node_count = 1
}

