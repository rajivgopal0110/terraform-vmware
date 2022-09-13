provider "vsphere" {
  user                 = var.vsphere_vcenter_user
  password             = var.vsphere_vcenter_password
  vsphere_server       = var.vsphere_vcenter_server
  allow_unverified_ssl = true
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_access_key
  region     = var.aws_region
}