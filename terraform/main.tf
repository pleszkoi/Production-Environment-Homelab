terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

# Docker network
resource "docker_network" "app_network" {
  name = "flask_network"
}

# Flask app image build
resource "docker_image" "flask_app" {
  name = "flask-app:terraform"
  build {
    context    = "../.."
    dockerfile = "docker/Dockerfile"
  }
}

# Flask app container
resource "docker_container" "flask_app" {
  name  = "flask-app-container"
  image = docker_image.flask_app.image_id
  ports {
    internal = 5000
    external = 5000
  }
  networks_advanced {
    name = docker_network.app_network.name
  }
}
