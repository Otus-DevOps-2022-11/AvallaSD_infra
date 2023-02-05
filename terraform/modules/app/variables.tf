variable "public_key_path" {
  description = "Path to the public key used for ssh access"
  default     = "~/.ssh/id_rsa.pub"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable "subnet_id" {
  description = "Subnets for modules"
  default     = "e9bm9qtiqc3gfrm7c1rl"
}
