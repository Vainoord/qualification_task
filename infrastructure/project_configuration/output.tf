# Masternode ip address
output "k8s_masternode_ip" {
  value = "${yandex_compute_instance.k8s-node["k8s-masternode"].network_interface.0.nat_ip_address}"
}

# Worknode01 ip address
output "k8s_worknode01_ip" {
  value = "${yandex_compute_instance.k8s-node["k8s-worknode01"].network_interface.0.nat_ip_address}"
}

# Worknode02 ip address
output "k8s_worknode02_ip" {
  value = "${yandex_compute_instance.k8s-node["k8s-worknode02"].network_interface.0.nat_ip_address}"
}