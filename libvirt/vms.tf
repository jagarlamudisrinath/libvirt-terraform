module "master1" {
  source = "../modules/vm"
  hostname = "k8master1"
  ip_address = "192.168.0.201/24"
  cpu = "2"
  memory = "8192"
  fqdn = "k8master1.example.local"
  base_image_id = module.base_volume.base_image_id
  volume_size = 21474836480
}

module "master2" {
  source = "../modules/vm"
  hostname = "k8master2"
  ip_address = "192.168.0.202/24"
  cpu = "2"
  memory = "8192"
  fqdn = "k8master2.example.local"
  base_image_id = module.base_volume.base_image_id
  volume_size = 21474836480
}

module "worker1" {
  source = "../modules/vm"
  hostname = "k8worker1"
  ip_address = "192.168.0.211/24"
  cpu = "2"
  memory = "8192"
  fqdn = "k8worker1.example.local"
  base_image_id = module.base_volume.base_image_id
  volume_size = 21474836480
}

module "worker2" {
  source = "../modules/vm"
  hostname = "k8worker2"
  ip_address = "192.168.0.212/24"
  cpu = "2"
  memory = "8192"
  fqdn = "k8worker2.example.local"
  base_image_id = module.base_volume.base_image_id
  volume_size = 21474836480
}

module "worker3" {
  source = "../modules/vm"
  hostname = "k8worker3"
  ip_address = "192.168.0.213/24"
  cpu = "2"
  memory = "8192"
  fqdn = "k8worker3.example.local"
  base_image_id = module.base_volume.base_image_id
  volume_size = 21474836480
}

module "worker4" {
  source = "../modules/vm"
  hostname = "k8worker4"
  ip_address = "192.168.0.214/24"
  cpu = "2"
  memory = "8192"
  fqdn = "k8worker4.example.local"
  base_image_id = module.base_volume.base_image_id
  volume_size = 21474836480
}

module "worker5" {
  source = "../modules/vm"
  hostname = "k8worker5"
  ip_address = "192.168.0.215/24"
  cpu = "2"
  memory = "8192"
  fqdn = "k8worker5.example.local"
  base_image_id = module.base_volume.base_image_id
  volume_size = 21474836480
}



