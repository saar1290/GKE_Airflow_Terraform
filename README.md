# GKE_Airflow_Terraform
Terraform Google Kubernetes Elastic Infrustructure with Airflow Helm Chart

# Prerequisites

## Install those tools first:
* gcloud
[link to gcloud installation](https://cloud.google.com/sdk/docs/install)

* kubectl
[link to kubectl installation](https://kubernetes.io/docs/tasks/tools/)

* helm 
[link to helm installation](https://helm.sh/docs/intro/install/)

## When all the tools above are installed, clone this project to your local machine and run those commands in youre shell:

### change dir to the project dir
* cd GKE_Terraform_Aireflow

### Initialize the terraform and install the providers
* terraform init

### Create an execution plan with preview changes that will be on your GCP 
* terraform plan

### Apply the changes on your GCP
* terraform apply

***NOTE***

Now you can go and take some coffee, that's plan will take some minutes... ;-)

### After the plan is done run this command to import the cluster credentials of GKE to your kubeconfig on the local machine:

* gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw region)
