data "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.region
  project  = var.project_id
}

resource "helm_release" "airflow" {
  name             = var.app_name
  namespace        = var.app_name
  create_namespace = true
  repository       = var.repository
  chart            = var.app_name
  wait             = true
  depends_on = [
    google_container_cluster.primary
  ]

  set {
    name  = "auth.password"
    value = "admin"
  }
}

resource "kubernetes_service" "primary" {
  metadata {
    name = "${var.app_name}-web"
    namespace = var.app_name
  }
  spec {
    selector  = {
      "app.kubernetes.io/component" = "web",
      "app.kubernetes.io/instance" = "airflow",
      "app.kubernetes.io/name" = "airflow",
    }
    port {
      port = 8080
      target_port = 8080
    }
    
    type = "LoadBalancer"
  }
  depends_on = [
    helm_release.airflow
  ]
}

