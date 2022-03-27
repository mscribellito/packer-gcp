variable "project_id" {
  type        = string
  description = "The project ID that will be used to launch instances and store images."
}

variable "machine_type" {
  type        = string
  description = "The machine type."
  default     = "n1-standard-1"
}

variable "zone" {
  type        = string
  description = "The zone in which to launch the instance used to create the image."
  default     = "us-central1-a"
}