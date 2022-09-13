
data "vsphere_host" "host" {
  name          = var.vsphere_vcenter_host_150
  datacenter_id = data.vsphere_datacenter.datacenter.id
}

//Creating a new switch
resource "vsphere_host_virtual_switch" "host_virtual_switch" {
  name           = "newSwitch"
  host_system_id = data.vsphere_host.host.id

  network_adapters = ["vmnic2", "vmnic3"]

  active_nics  = ["vmnic2"]
  standby_nics = ["vmnic3"]
}

// Create a new "dev-portgroup" port group
resource "vsphere_host_port_group" "pg" {
  name                = "dev-portgroup"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.host_virtual_switch.name
}

//Creating a new port group for vmkernel nic
resource "vsphere_host_port_group" "vmk01" {
  name                = "vMotion"
  host_system_id      = data.vsphere_host.host.id
  virtual_switch_name = vsphere_host_virtual_switch.host_virtual_switch.name
}

// Creating vmnic for vMotion using the prev port group
resource "vsphere_vnic" "v1" {
  host      = data.vsphere_host.host.id
  portgroup = vsphere_host_port_group.vmk01.name
  ipv4 {
    ip      = "10.10.0.151"
    netmask = "255.255.255.0"
    gw      = "10.10.0.2"
  }
  netstack = "vmotion"
}