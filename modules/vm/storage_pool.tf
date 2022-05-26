resource "libvirt_pool" "k8scluster-storage" {
  name = "cluster-${var.hostname}"
  type = "dir"
  path = "/var/kvm-volume-pool/${var.hostname}"
}

resource "libvirt_pool" "k8s-cloud-init" {
  name = "cloud-init-${var.hostname}"
  type = "dir"
  path = "/var/kvm-cloud-init-pool/${var.hostname}"
}

