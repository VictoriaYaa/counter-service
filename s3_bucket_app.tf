
#1 -this will create a S3 bucket in AWS
resource "aws_s3_bucket" "terraform_state_s3" {
  bucket = "for-app-s3-bucket" 
  force_destroy = true
# Enable versioning to see full revision history of our state files
  versioning {
         enabled = true
        }

# Enable server-side encryption by default
server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

# S3 Backend
terraform {
  backend "s3" {
    bucket = "for-app-s3-bucket"
    key    = "terraform_for_app.tfstate"
    region = "us-east-1"
    profile = "default"
    encrypt = true
  }
}