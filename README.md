# Terraform Module: Kubernetes Cluster on Proxmox with k3s

![Terraform Version](https://img.shields.io/badge/Terraform-%3E%3D0.12-blueviolet)
![GitHub License](https://img.shields.io/github/license/yourusername/terraform-k3s-proxmox)

## Description

This Terraform module allows you to deploy a Kubernetes cluster on Proxmox using k3s. The cluster will consist of server nodes for High-Availability and agent nodes for deploying workloads.

## Features

- Automated deployment of k3s Kubernetes cluster on Proxmox.
- High-Availability setup with server nodes.
- Customizable VM configurations (CPU, memory, disk size).
- Securely generate random k3s cluster token.
- Utilizes Docker for MariaDB database.

## Usage

1. Install Terraform (>= 0.12) on your local machine.
2. Clone this repository to your local system.
3. Modify the variables in `terraform.tfvars` to suit your needs.
4. Initialize Terraform: `terraform init`
5. Plan the infrastructure changes: `terraform plan`
6. Apply the changes to create the Kubernetes cluster: `terraform apply`

## Requirements

- Proxmox API access with the required permissions to create VMs.
- Proxmox VM template for the Kubernetes nodes.
- SSH keypair for authentication to the VMs.
- Internet access on the VMs for package updates and installations.

## Inputs

| Name                           | Description                                     | Type     | Default       |
|--------------------------------|-------------------------------------------------|----------|---------------|
| proxmox_api_token_secret       | The secret API token for Proxmox API access.   | string   |               |
| proxmox_api_token_id           | The ID of the API token for Proxmox API access.| string   |               |
| proxmox_api_url                | The URL of the Proxmox API endpoint.           | string   |               |
| server_node_count              | The number of server nodes for High-Availability. | number | 2             |
| agent_node_count               | The number of agent nodes in the cluster.      | number   | 3             |
| k3s_version                    | The version of k3s to be installed.            | string   | "v1.26.3+k3s1" |
| disk_size                      | Disk size for each Kubernetes node.            | string   | "30G"         |
| memory                         | Memory (RAM) for each Kubernetes node.         | number   | 3072          |
| cores                          | Number of CPU cores for each Kubernetes node.  | number   | 4             |
| ciuser                         | The default username for created VMs.          | string   |               |
| ssh_keys                       | SSH public key to add to VMs' authorized_keys. | string   |               |
| ssh_private_key                | Private SSH key for Terraform to SSH into VMs. | string   |               |
| mariadb_database_size          | Size of the MariaDB control plane database.    | string   | "20G"         |

## Outputs

| Name                         | Description                              |
|------------------------------|------------------------------------------|
| kubernetes_cluster_info      | Variables for connecting to the Kubernetes cluster. Includes server IPs and the k3s token. |
| server_ips                   | IP addresses of the server nodes in the Kubernetes cluster. |
| ... (Add more outputs as needed) |

## License

This project is licensed under the [MIT License](LICENSE).

## Contributions and Feedback

Contributions, bug reports, and feature requests are welcome! Feel free to open issues and submit pull requests.
