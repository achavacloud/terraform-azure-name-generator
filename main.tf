terraform {
  required_version = ">= 1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 1.32"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 3.0"
    }
  }
}
