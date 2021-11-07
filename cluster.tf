data "google_client_config" "current" {}

resource "google_container_cluster" "primary" {
    name        = var.cluster_name
    project     = var.project_id
    location      = var.region
    description = "Demo GKE Cluster"

    # remove_default_node_pool = true 
    initial_node_count       = 1
}

# resource "google_container_node_pool" "primary-nodes" {
#     name       = "${google_container_cluster.primary.name}-node-pool"
#     project    = var.project_id
#     location   = var.region
#     cluster    = google_container_cluster.primary.name
#     node_count = 1
    
#     node_config {
#         oauth_scopes = [
#             "https://www.googleapis.com/auth/logging.write",
#             "https://www.googleapis.com/auth/monitoring",
#         ]

#         labels = {
#             env = var.project_id
#         }

#         preemptible  = true
#         tags         = ["gke-node", "${var.project_id}-gke"]
#         machine_type = var.machine_type
#         metadata = {
#           disable-legacy-endpoints = "true"
#         }
#     }
# }
