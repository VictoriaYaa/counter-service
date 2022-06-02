resource "docker_image" "counter_service_image" {
  name = "vic_counter_service"
  build {
    path = "."
    dockerfile = "Dockerfile"
    }
  }


# Start a container
resource "docker_container" "counter_service_container" {
  name  = "counter_service_container"
  image = docker_image.counter_service_image.latest
}


# Create a ECR repository
resource "aws_ecr_repository" "vic_counter_service" {
  name                 = "vic_counter_service"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
