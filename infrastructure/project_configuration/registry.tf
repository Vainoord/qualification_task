resource "yandex_container_registry" "yc-reg" {
  name = "yc-registry"
  folder_id = var.yc_folder_id
  labels = {
    project = "qualification"
  }
}