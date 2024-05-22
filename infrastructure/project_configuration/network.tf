# Network
resource "yandex_vpc_network" "proj_network" {
  name = var.yc_vpc_name
}

# Public subnet
resource "yandex_vpc_subnet" "subnet_public" {
  name           = var.yc_subnet_pub
  zone           = var.yc_network_zone
  network_id     = yandex_vpc_network.proj_network.id
  v4_cidr_blocks = var.cidr_public
}

# Private subnet
resource "yandex_vpc_subnet" "subnet_private" {
  name           = var.yc_subnet_priv
  zone           = var.yc_network_zone
  network_id     = yandex_vpc_network.proj_network.id
  v4_cidr_blocks = var.cidr_private
}