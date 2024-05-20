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
  description = "Network default zone"
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
variable "sa_access_key" {
  type        = string
  description = "YC access key of service account"
}
variable "sa_secret_key" {
  type        = string
  description = "YC secret key of service account"
}
