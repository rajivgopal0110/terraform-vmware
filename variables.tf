// AWS variables //
variable "aws_access_key" {
  description = "The AWS access key"
  type        = string
}

variable "aws_secret_access_key" {
  description = "The AWS secret access key"
  type        = string
}

variable "aws_region" {
  description = "AWS region used"
  type        = string
}

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
  description = "10.10.0.150 host server IP"
}
//variable "vsphere_vcenter_host_160" {}
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
/* variable "pg_network" {
    type = string
    description = "Name of the Port Group"
} */
variable "pg_new_network" {
  type        = string
  description = "Name of the Port Group"
}
variable "iso_file" {
  type        = string
  description = "Path to the ISO file"
}

////// Dummy VM variables //////

variable "vm_names" {
  type    = list(string)
  default = ["VM-A", "VM-B", "VM-C", "VM-D", "VM-E"]
}
