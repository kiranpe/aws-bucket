provider "aws" {
   region = "us-east-2"
   profile = "Terrafrm"
}

resource "aws_s3_bucket" "terraform_state_store" {
   bucket = "terraform-remote-state-s3-store"

   versioning {
      enabled = true
   }

   lifecycle {
      prevent_destroy = false
   }
 
   tags = {
      Name = "S3 Remote Terraform State Store"
    }      
}
