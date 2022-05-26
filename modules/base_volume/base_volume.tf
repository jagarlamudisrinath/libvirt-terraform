terraform {
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
      version = "0.6.14"
    }
  }
}

resource "libvirt_volume" "centos8-base-volume" {
  name = "centos8.qcow2"
  source = var.image_url
}

output "base_image_id" {
  value = libvirt_volume.centos8-base-volume.id
}