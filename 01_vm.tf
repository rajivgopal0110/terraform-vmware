
resource "vsphere_virtual_machine" "vm" {
  name             = "linux-vm-01"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id
  num_cpus         = 1
  memory           = 1024
  guest_id         = "other4xLinux64Guest"

  wait_for_guest_net_timeout = 0

  cdrom {
    datastore_id = data.vsphere_datastore.datastore.id
    path         = var.iso_file
  }
  network_interface {
    network_id = data.vsphere_network.network.id
  }
  disk {
    label            = "disk0"
    size             = 5
    thin_provisioned = true
  }
}
