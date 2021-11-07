# Infrastructure vars

variable "project_id" {
  default     = "molten-infusion-331118"
  description = "The name for the GKE project"
}

variable "region" {
  default     = "europe-central2"
  description = "The location for the GKE cluster without specify zone, which is will be a regional clusters"
}

variable cluster_name {
  default     = "gke-edu-test"
  description = "The Cluster name"
}

variable "machine_type" {
  default = "n1-standard-2"
}

# Application vars

variable "app_name" {
  default     = "airflow"
  description = "AirFlow helm package"
}

variable repository {
  default     = "https://charts.bitnami.com/bitnami"
  description = "The Repository of packages"
}


