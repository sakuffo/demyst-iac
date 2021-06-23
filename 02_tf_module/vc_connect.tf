provider "vsphere" {
  user           = "administrator@vsphere.local"
  password       = "Vx5eals!!"
  vsphere_server = "rack9-4b-vc-01.vcf.vxrail.local" 

  # if you have a self-signed cert
  allow_unverified_ssl = true
}
