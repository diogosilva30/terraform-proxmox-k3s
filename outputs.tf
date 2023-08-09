output "host" {
  value       = local.host
  description = "The deployed kubernetes host"
  sensitive   = true
}
output "token" {
  value       = local.token
  description = "Kubernetes token"
  sensitive   = true
}
output "cluster_ca_certificate" {
  value       = local.cluster_ca_certificate
  description = "Kubernetes CA Certificate"
  sensitive   = true
}
output "server_ips" {
  value = proxmox_vm_qemu.k3s-nodes.*.ssh_host
}
