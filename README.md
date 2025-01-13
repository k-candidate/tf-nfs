# tf-nfs
NFS server provisioned by Terraform on libvirt KVM, user data run by cloud-init, and configuration made by Ansible.

## How to use
Provide variable values and apply Terraform.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.10.0 |
| <a name="requirement_libvirt"></a> [libvirt](#requirement\_libvirt) | = 0.7.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tf-module-kvm-vm"></a> [tf-module-kvm-vm](#module\_tf-module-kvm-vm) | git@github.com:k-candidate/tf-module-kvm-vm.git | v1.3.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_export_dir_permissions"></a> [export\_dir\_permissions](#input\_export\_dir\_permissions) | Directory permissions for the share | `list(string)` | <pre>[<br/>  "u=rwx,g=rwx,o=rwx",<br/>  "u=rwx,g=rwx,o=rwx"<br/>]</pre> | no |
| <a name="input_image_source"></a> [image\_source](#input\_image\_source) | Local path or URL for the image | `string` | `"https://cloud-images.ubuntu.com/releases/noble/release/ubuntu-24.04-server-cloudimg-amd64.img"` | no |
| <a name="input_network_name"></a> [network\_name](#input\_network\_name) | Name of the libvirt network where this machine will be provisioned | `string` | `"default"` | no |
| <a name="input_nfs_networks"></a> [nfs\_networks](#input\_nfs\_networks) | Networks allowed to access NFS | `list(string)` | <pre>[<br/>  "10.10.10.0/255.255.255.0",<br/>  "10.10.10.0/255.255.255.0"<br/>]</pre> | no |
| <a name="input_nfs_options"></a> [nfs\_options](#input\_nfs\_options) | Options for NFS shares | `list(string)` | <pre>[<br/>  "(rw,sync,no_subtree_check)",<br/>  "(rw,sync,no_subtree_check)"<br/>]</pre> | no |
| <a name="input_shares"></a> [shares](#input\_shares) | NFS shares | `list(string)` | <pre>[<br/>  "test1",<br/>  "test2"<br/>]</pre> | no |
| <a name="input_ssh_private_key"></a> [ssh\_private\_key](#input\_ssh\_private\_key) | Private SSH key of the account | `string` | `"~/.ssh/id_ed25519"` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | Public SSH key of the account | `string` | `"~/.ssh/id_ed25519.pub"` | no |
| <a name="input_user_data"></a> [user\_data](#input\_user\_data) | File for cloud-init user data cfg | `string` | `"cloud-init/user-data.cfg"` | no |
| <a name="input_vm_hostname"></a> [vm\_hostname](#input\_vm\_hostname) | Hostname of the machine | `string` | `"nfs-server.domain.dom"` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Libvirt name or domain of the machine | `string` | `"nfs-server"` | no |
| <a name="input_vm_username"></a> [vm\_username](#input\_vm\_username) | Username of an account with SSH access | `string` | `"ubuntu"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->