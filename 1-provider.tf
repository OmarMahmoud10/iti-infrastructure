provider "google" {
    project = "iti"
    region = "us-central1"
  
}

terraform {
  backend "gcs"{
    bucket = "iti-terraform-bucket"
    prefix = "value"
  }

  required_providers {
    google = {
        source = "hashicorp/google"
        version = "~> 4.0"
    }
  }
}

