variable "cluster_name" {
  description = "The name of your kubernetes cluster. Used for VM naming."
  type        = string
}


variable "proxmox_vm_image_name" {
  description = "The name of the Proxmox template/image to clone when creating the VMs for the Kubernetes nodes."
  type        = string
}

variable "mariadb_database_size" {
  description = "The size of the MariaDB control plane database volume in Kubernetes. This value should be fixed and not user-configurable."
  type        = string
  default     = "20G"
}

variable "k3s_extra_args" {
  description = "Extra arguments to pass to the k3s server."
  type        = string
  default     = ""
}

variable "server_node_count" {
  description = "The number of server nodes for High-Availability."
  type        = number
  default     = 2
}

variable "agent_node_count" {
  description = "The number of agent nodes in the Kubernetes cluster."
  type        = number
  default     = 3
}

variable "k3s_version" {
  description = "The version of k3s to be installed on the nodes."
  type        = string
  default     = "v1.26.3+k3s1"
}

# Hardware configuration for Kubernetes nodes
variable "disk_size" {
  description = "The disk size for each Kubernetes node. E.g. '50G'"
  type        = string
  default     = "30G"
}

variable "memory" {
  description = "The amount of memory (RAM) for each Kubernetes node in megabytes (MB). E.g. 2048"
  type        = number
  default     = 3072
}

variable "balloon" {
  description = <<EOF
  The minimum amount of memory in megabytes (MB) to allocate to the VM when Automatic Memory Allocation is desired. Proxmox will enable a balloon device on the guest to manage memory.
  EOF
  type        = number
  default     = 1024
}

variable "cores" {
  description = "The number of CPU cores to allocate to each Kubernetes node."
  type        = number
  default     = 4
}
variable "onboot" {
  description = "Whether the VM should be started during system bootup."
  type        = bool
  default     = true
}
# SSH configuration
variable "ciuser" {
  description = "The name of the default user that should be created on the Kubernetes nodes."
  type        = string
}

variable "ssh_public_key_path" {
  description = "The path of the SSH public key to add the authorized_keys file of the default user on the Kubernetes nodes."
  type        = string
}

variable "ssh_private_key_path" {
  description = "The private SSH key path that Terraform will use to SSH into the Kubernetes nodes."
  sensitive   = true
  type        = string
}
