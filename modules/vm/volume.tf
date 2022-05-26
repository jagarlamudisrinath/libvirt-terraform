resource "libvirt_volume" "centos8-qcow2" {
  name = "${var.hostname}.qcow2"
  pool = libvirt_pool.k8scluster-storage.name
  base_volume_id = var.base_image_id
  size = var.volume_size
}
