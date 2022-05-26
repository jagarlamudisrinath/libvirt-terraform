terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
      version = "0.6.14"
    }
  }
}

# Define KVM domain to create
resource "libvirt_domain" "centos8" {
  name   = var.hostname
  memory = var.memory
  vcpu   = var.cpu

  network_interface {
    bridge = "bridge0"
    hostname = var.hostname
  }
  qemu_agent = true
  disk {
    volume_id = libvirt_volume.centos8-qcow2.id
  }

  cloudinit = libvirt_cloudinit_disk.commoninit.id

  console {
    type = "pty"
    target_type = "serial"
    target_port = "0"
  }

}