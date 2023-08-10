output "kubeconfig" {
  value       = local.kubeconfig
  description = "Raw kubeconfig"
  sensitive   = true
}
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
output "client_certificate" {
  value       = local.client_certificate
  description = "Kubernetes Client Certificate"
  sensitive   = true
}
output "client_key" {
  value       = local.client_key
  description = "Kubernetes Client Key"
  sensitive   = true
}
output "server_ips" {
  value = proxmox_vm_qemu.k3s-nodes.*.ssh_host
}
