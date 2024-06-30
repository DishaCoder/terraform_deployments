# creating notebook

locals {
  instances = {
    "instance-1" = {
      email = "xyz"
    },
    "instance-2" = {
      email = "xyz"
    },
    // Add more instance configurations as needed
  }
}

resource "google_notebooks_instance" "instance" {
  for_each = local.instances
  name         = each.key
  instance_owners = [each.value.email]
  location     = var.gcp_region
  machine_type = "e2-medium"
  vm_image {
    project      = "deeplearning-platform-release"
    image_family = "tf-latest-cpu"
  }
}
