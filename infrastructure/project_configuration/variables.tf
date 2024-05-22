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

variable "yc_vpc_name" {
  type        = string
  description = "VPC name"
  default = "proj-network"
}

variable "yc_subnet_pub" {
  type        = string
  description = "public subnet name"
  default     = "net-public"
}

variable "yc_subnet_priv" {
  type        = string
  description = "private subnet name"
  default     = "net-private"
}

variable "cidr_private" {
  type        = list(string)
  default     = ["192.168.101.0/24"]
  description = "Default cidr for private subnet"
}

variable "cidr_public" {
  type        = list(string)
  default     = ["192.168.201.0/24"]
  description = "Default cidr for public subnet"
}

variable "yc_instance_name" {
  type        = list(string)
  default     = ["k8s-masternode", "k8s-worknode01", "k8s-worknode02"]
  description = "List of instance names"
}

variable "yc_platform_id" {
  type        = string
  default     = "standard-v1"
  description = "Default platform for instances. See https://yandex.cloud/en/docs/compute/concepts/vm-platforms"
}

variable "yc_image_id" {
  type        = string
  default     = "fd80qjt4v3h9ukucg1di"
  description = "Default image ID for project (Ubuntu 20.04)"
}

variable "vm_user" {
  type = string
}

variable "ssh_public_key_path" {
  type = string
}

variable "ssh_private_key_path" {
  type = string
}
