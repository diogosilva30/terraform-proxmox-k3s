terraform {
  required_providers {
    # https://github.com/Telmate/terraform-provider-proxmox
    proxmox = {
      source  = "telmate/proxmox"
      version = "2.9.3"
    }
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Configure proxmox provider
provider "proxmox" {
  pm_api_url          = var.proxmox_api_url
  pm_api_token_id     = var.proxmox_api_token_id
  pm_api_token_secret = var.proxmox_api_token_secret
  pm_tls_insecure     = true
}
provider "aws" {
  s3_use_path_style           = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
}