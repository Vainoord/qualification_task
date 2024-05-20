# return access_key
output "access_key" {
  value = yandex_iam_service_account_static_access_key.sa_static_key.access_key
}

# return secret_key
output "secret_key" {
  value = yandex_iam_service_account_static_access_key.sa_static_key.secret_key
  sensitive = true
}