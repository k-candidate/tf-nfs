variable "vm_name" {
  description = "Libvirt name or domain of the machine"
  type        = string
  default     = "nfs-server"
}

variable "network_name" {
  description = "Name of the libvirt network where this machine will be provisioned"
  type        = string
  default     = "default"
}

variable "image_source" {
  description = "Local path or URL for the image"
  type        = string
  default     = "https://cloud-images.ubuntu.com/releases/noble/release/ubuntu-24.04-server-cloudimg-amd64.img"
}

variable "user_data" {
  description = "File for cloud-init user data cfg"
  type        = string
  default     = "cloud-init/user-data.cfg"
}

variable "vm_username" {
  description = "Username of an account with SSH access"
  type        = string
  default     = "ubuntu"
}

variable "vm_hostname" {
  description = "Hostname of the machine"
  type        = string
  default     = "nfs-server.domain.dom"
}

variable "ssh_public_key" {
  description = "Public SSH key of the account"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "ssh_private_key" {
  description = "Private SSH key of the account"
  type        = string
  default     = "~/.ssh/id_ed25519"
}

variable "shares" {
  description = "NFS shares"
  type        = list(string)
  default     = ["test1", "test2"]
}

variable "export_dir_permissions" {
  description = "Directory permissions for the share"
  type        = list(string)
  default     = ["u=rwx,g=rwx,o=rwx", "u=rwx,g=rwx,o=rwx"]
}

variable "nfs_networks" {
  description = "Networks allowed to access NFS"
  type        = list(string)
  default     = ["10.10.10.0/255.255.255.0", "10.10.10.0/255.255.255.0"]
}

variable "nfs_options" {
  description = "Options for NFS shares"
  type        = list(string)
  default     = ["(rw,sync,no_subtree_check)", "(rw,sync,no_subtree_check)"]
}