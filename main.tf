terraform {
  backend "gcs" {
    bucket = "viktor_terraform_state"
    prefix = "terraform/state"
  }
}

module "gke_cluster" {
  source           = "github.com/ViktorDevOpsCourse/tf-google-gke-cluster"
  GOOGLE_REGION    = var.GOOGLE_REGION
  GOOGLE_PROJECT   = var.GOOGLE_PROJECT
  GKE_NUM_NODES    = var.GKE_NUM_NODES
  GKE_MACHINE_TYPE = var.GKE_MACHINE_TYPE
  GKE_CLUSTER_NAME = var.GKE_CLUSTER_NAME
  GKE_POOL_NAME    = var.GKE_POOL_NAME
}