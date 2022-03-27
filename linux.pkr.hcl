source "googlecompute" "rhel-8" {
  project_id          = var.project_id
  machine_type        = var.machine_type
  source_image_family = "rhel-8"
  image_name          = "rhel-8-${lower(regex_replace(timestamp(), "([:])", "-"))}"
  ssh_username        = "packer"
  zone                = var.zone
}

build {
  sources = ["sources.googlecompute.rhel-8"]
}