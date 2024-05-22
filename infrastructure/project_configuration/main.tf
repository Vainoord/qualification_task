### Main terraform file

# Nodes for k8s
# Three similar machines in private subnet
resource "yandex_compute_instance" "k8s-node" {
  for_each = toset(var.yc_instance_name)
  name = each.key
  zone = var.yc_network_zone
  platform_id = var.yc_platform_id
  resources {
    cores         = 2
    memory        = 4
    core_fraction = 20
  }
  boot_disk {
    initialize_params {
      image_id = var.yc_image_id
      size     = "30"
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.subnet_public.id
    nat       = true
  }
  scheduling_policy {
    preemptible = true
  }
  metadata = {
    serial-port-enable = 1
    user-data = data.template_file.cloud_config_public.rendered
  }
}