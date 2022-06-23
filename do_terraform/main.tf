terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = ">= 2.8.0"
    }
  }
}

#Define Variables
# variable "do_token" {}
# variable "private_key" {}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "dop_v1_d5030d8e6227f0cb51715e9af55ee7b658c7a3ae5965093f1bd170147638d90f"
  # token = var.do_token
}

#Create server 1
resource "digitalocean_droplet" "zeus" {
  ssh_keys = ["e7:3a:8e:72:dd:5d:31:fa:14:3a:29:1f:be:eb:fc:f0"]
  image    = "centos-stream-8-x64"
  region   = "nyc1"
  name     = "zeus"
  size     = "s-1vcpu-1gb"
}

#Create server 2
resource "digitalocean_droplet" "poseidon" {
  ssh_keys = ["e7:3a:8e:72:dd:5d:31:fa:14:3a:29:1f:be:eb:fc:f0"]
  image    = "centos-stream-8-x64"
  region   = "nyc3"
  name     = "poseidon"
  size     = "s-1vcpu-1gb"
}

#Creante server 3
resource "digitalocean_droplet" "hades" {
  ssh_keys = ["e7:3a:8e:72:dd:5d:31:fa:14:3a:29:1f:be:eb:fc:f0"]
  image    = "centos-stream-8-x64"
  region   = "nyc3"
  name     = "hades"
  size     = "s-1vcpu-1gb"
}

#Outputs
output "Zeus_IP_Address" {
  value = digitalocean_droplet.zeus.ipv4_address
}

output "Poseido_IP_Address" {
  value = digitalocean_droplet.poseidon.ipv4_address
}

output "Hades_IP_Address" {
  value = digitalocean_droplet.hades.ipv4_address
}