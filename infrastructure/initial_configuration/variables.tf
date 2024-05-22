###cloud vars
variable "yc_token" {
  type = string
  description = "OAuth-token"
}

variable "yc_cloud_id" {
  type = string
  description = "Cloud ID"
}

variable "yc_folder_id" {
  type = string
  description = "Folder ID"
}

variable "yc_network_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "Default network zone"
}