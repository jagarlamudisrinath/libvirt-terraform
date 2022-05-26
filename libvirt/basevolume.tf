module "base_volume" {
  source = "../modules/base_volume"
  image_url = "https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64-disk-kvm.img"
}

