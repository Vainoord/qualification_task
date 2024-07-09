resource "yandex_container_registry" "yc-reg" {
  name = var.registry_name
  folder_id = var.yc_folder_id
  labels = {
    project = "qualification"
  }
}

resource "yandex_container_registry_ip_permission" "yc-reg-permission" {
  registry_id = yandex_container_registry.yc-reg.id
  pull        = []
  push        = []
}

resource "yandex_iam_service_account" "yc-sa" {
  name        = var.sa_name
  description = "The name of service account for access to container registry"
  folder_id   = var.yc_folder_id
}

resource "yandex_resourcemanager_folder_iam_member" "yc-sa-puller" {
  folder_id   = var.yc_folder_id
  role        = "container-registry.images.puller"
  member      = "serviceAccount:${yandex_iam_service_account.yc-sa.id}"
}

resource "yandex_resourcemanager_folder_iam_member" "yc-sa-pusher" {
  folder_id   = var.yc_folder_id
  role        = "container-registry.images.pusher"
  member      = "serviceAccount:${yandex_iam_service_account.yc-sa.id}"
}