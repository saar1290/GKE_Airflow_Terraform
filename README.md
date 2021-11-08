# GKE_Airflow_Terraform
Terraform Google Kubernetes Elastic Infrustructure with Airflow Helm Chart

# Pre-Requirements

## First follow those instructions:

* terraform

[Link to the Terraform CLI installation](https://learn.hashicorp.com/tutorials/terraform/install-cli)

* gcloud

[Link to the Gcloud SDK installation](https://cloud.google.com/sdk/docs/install)

* kubectl

[Link to the Kubectl CLI installation](https://kubernetes.io/docs/tasks/tools/)

## When all the tools above are installed, clone this project to your local machine and run those commands in your shell:

### Change dir to the project dir
* cd GKE_Terraform_Aireflow

***NOTE***

Change the project name in variables.tf to your GCP project

# Login to GCP via gcluod SDK

* gcloud auth application-default login

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
