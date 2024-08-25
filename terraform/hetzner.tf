variable "hcloud_token" {
  sensitive = true
}

provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_server" "node1" {
  name        = "reverseproxy"
  image       = "ubuntu-22.04"
  server_type = "cax11"
  datacenter  = "fsn1-dc14"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = true
  }
  ssh_keys = [hcloud_ssh_key.default.id]
}

resource "hcloud_ssh_key" "default" {
  name       = "Rauchberger Universal"
  public_key = file("~/.ssh/id_rsa.pub")
}