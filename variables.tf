// vSphere variables //
variable "vsphere_vcenter_user" {
  type        = string
  description = "Username for the vCenter login"
}
variable "vsphere_vcenter_password" {
  type        = string
  description = "Password for the vCenter login"
}
variable "vsphere_vcenter_server" {
  type        = string
  description = "vCenter server IP/FQDN"
}
variable "vsphere_vcenter_host_150" {
  type        = string
  description = "ESXi host server IP"
}
variable "datacenter" {
  type        = string
  description = "Datacenter name"
}
variable "cluster" {
  type        = string
  description = "Compute cluster name"
}
variable "datastore" {
  type        = string
  description = "Datastore name"
}
variable "pg_network" {
  type        = string
  description = "Name of the Port Group"
}
variable "iso_file" {
  type        = string
  description = "Path to the ISO file"
}

