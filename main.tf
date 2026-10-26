terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx:alpine"
  keep_locally = true
}

resource "docker_container" "task3" {
  name  = "terraform-task3-nginx"
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = 18081
  }
}

output "container_name" {
  value = docker_container.task3.name
}

output "application_url" {
  value = "http://localhost:18081"
}