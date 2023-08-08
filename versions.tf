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

