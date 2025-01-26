variable "credentials" {
  description = "My Credentials"
  default     = "./keys/my_cred.json"
}

variable "proyect" {
  description = "Proyect"
  default     = "confident-truth-421422"
}

variable "region" {
  description = "Proyect region"
  default     = "southamerica-east1"
}

variable "location" {
  description = "Proyect location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "confident-truth-421422-terra-bucket"
}

variable "gs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}