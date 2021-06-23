# Deploy 2 linux VMs
module "vsphere-linux-vm" {
  source        = "Terraform-VMWare-Modules/vm/vsphere"
  version       = "3.1.0"
  vmtemp        = "ubuntu-jump-template"
  instances     = 2
  vmname        = "dIaC-vm"
  vmrp          = "tf_demo"
  network = {
    "server-net" = ["192.9.11.17","192.9.11.18"] # To use DHCP create Empty list ["",""]
  }
  vmgateway         = "192.9.0.1"
  dc        = "vxrail-datacenter"
  datastore = "vxrail-datastore"
}