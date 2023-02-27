
terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = ">= 3.0, < 4.0.0"
    }
    tls = {
      source = "hashicorp/tls"
    }
  }
}
