terraform {
  required_version = ">= 1.4.0"

  backend "local" {
    path = "terraform.tfstate"
  }
}

resource "terraform_data" "demo" {
  input = "dummy Terraform resource"
}

output "demo_value" {
  value = terraform_data.demo.output
}
