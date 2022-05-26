data "template_file" "user_data" {
  template = file("${path.module}/cloud_init.cfg")
  vars = {
    hostname = var.hostname
    fqdn = var.fqdn
  }
}

data "template_file" "network_data" {
  template = file("${path.module}/network.cfg")
    vars = {
    ipaddress = var.ip_address
  }
}

# Use CloudInit to add the instance
resource "libvirt_cloudinit_disk" "commoninit" {
  name = "commoninit.iso"
  pool = libvirt_pool.k8s-cloud-init.name
  user_data = data.template_file.user_data.rendered
  network_config = data.template_file.network_data.rendered
}


