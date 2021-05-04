
terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 2.20.0, < 3.0.0"
    }
    tls = {
      source = "hashicorp/tls"
    }
  }
}
