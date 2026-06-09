terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {}

resource "docker_image" "ubuntu" {
  name = "ubuntu:22.04"
}

resource "docker_container" "blast_server" {
  image = docker_image.ubuntu.image_id
  name  = "blast_server"

  command = ["sleep","infinity"]

  ports {
    internal = 80
    external = 8081
  }
}
