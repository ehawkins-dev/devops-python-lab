terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "flask_app" {
  name         = "devops-python-lab:latest"
  keep_locally = true
}

resource "docker_container" "flask_app" {
  name  = "devops-lab-v2"
  image = docker_image.flask_app.image_id

  ports {
    internal = 5000
    external = 5000
  }
}