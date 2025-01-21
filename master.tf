variable "region" {
    description = "Región de AWS"
    type = string
    validation {
        condition = contains(["us-east-1"], var.region)
        error_message = "La región debe ser únicamente en 'us-east-1'."
    }
}

variable "bucket_new_name" {
  description = "Nombre del bucket"
  type = string
}

output "s3_bucket_module_output" {
  value = module.s3_bucket.website_endpoint
}

provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source = "./modules/s3-bucket"
  bucket_name = var.bucket_new_name
}