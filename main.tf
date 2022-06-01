resource "docker_image" "counter_service_image" {
  name = "counter_services"
  build {
    path = "/counter-service"
    dockerfile = "Dockerfile.dockerfile"
    }
  }


# Start a container
resource "docker_container" "counter_service_container" {
  name  = "counter_service_container"
  image = docker_image.counter_service_image.latest
}



