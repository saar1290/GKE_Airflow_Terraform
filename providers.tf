terraform {
  required_version = ">= 1.0.10"
required_providers {
  google = ">= 4.0.0"
  helm   = ">= 2.3.0"
  }
}

provider "kubernetes" {  
  host                   = "https://${google_container_cluster.primary.endpoint}"
  token                  = data.google_client_config.current.access_token
  cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth.0.cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
    host                   = google_container_cluster.primary.endpoint
    token                  = data.google_client_config.current.access_token
    cluster_ca_certificate = base64decode(google_container_cluster.primary.master_auth.0.cluster_ca_certificate)
  }
}