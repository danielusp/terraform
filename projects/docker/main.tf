terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.9.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:1.11-alpine"
  keep_locally = false
}

resource "docker_container" "nginx-server" {
    name = "nginx-server"
    image = docker_image.nginx.latest
    ports {
        internal = 80
        external = 3000
    }
}