terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials)
  project     = var.proyect
  region      = var.region
}

resource "google_storage_bucket" "demo-bucket" {
  name          = var.gs_bucket_name
  location      = var.location
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}


resource "google_bigquery_dataset" "demo-dataset" {
  dataset_id = var.bq_dataset_name
  location   = var.location
}