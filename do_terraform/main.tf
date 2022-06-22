terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = ">= 2.8.0"
    }
  }
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = ""
}

# Create a server 1
resource "digitalocean_droplet" "droplet1" {
  ssh_keys           = [""]  
  image              = "centos-stream-8-x64"
  region             = "nyc1"
  name               = "droplet1"
  size               = "s-1vcpu-1gb"
}

# Create a server 2
resource "digitalocean_droplet" "droplet2" {
  ssh_keys           = [""]  
  image              = "centos-stream-8-x64"
  region             = "nyc1"
  name               = "droplet2"
  size               = "s-1vcpu-1gb"
}