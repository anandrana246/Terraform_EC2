terraform {
  required_version = ">=1.4.0"
  required_providers {
    rana = {
      source  = "hashicorp/aws"
      version = "~> 5.95.0"
    }
  }
}

provider "rana" {
  profile = "default"
  region  = "us-east-1"
}