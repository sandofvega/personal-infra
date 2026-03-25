provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "vps" {
  name   = "docker-vps"
  region = "sgp1"
  size   = "s-1vcpu-1gb"
  image  = "ubuntu-22-04-x64"
  ssh_keys = [var.ssh_fingerprint]
}

output "ip" {
  value = digitalocean_droplet.vps.ipv4_address
}