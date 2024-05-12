### Main terraform file

# service account
resource "yandex_iam_service_account" "project_sa" {
  name = local.sa_name
}

# Assigning role(s) to the sa
resource "yandex_resourcemanager_folder_iam_member" "sa-editor" {
  folder_id = var.yc_folder_id
  role      = "storage.editor"
  member    = "serviceAccount:${yandex_iam_service_account.project_sa.id}"
}

# A static access key
resource "yandex_iam_service_account_static_access_key" "sa_static_key" {
  service_account_id = yandex_iam_service_account.project_sa.id
  description        = "static access key for object storage"
}

# A bucket using the access key
resource "yandex_storage_bucket" "conf-bucket" {
  access_key = yandex_iam_service_account_static_access_key.sa_static_key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa_static_key.secret_key
  bucket     = local.bucket_name
}