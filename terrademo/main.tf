 terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "5.6.0"
        }
    }
 } 

 provider "google" {
    credentials = "/home/fedeB19/terrademo/keys/my_cred.json"
    project = "confident-truth-421422"
    region  = "southamerica-east1" 
 }

 resource "google_storage_bucket" "demo-bucket" {
  name          = "confident-truth-421422-terra-bucket"
  location      = "US"
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