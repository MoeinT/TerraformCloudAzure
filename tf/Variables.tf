variable "project" {
  type        = string
  description = "Application project name"
}

variable "environment" {
  type        = string
  description = "The environment where the resources will be deployed"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "The environment can be either staging, dev, or prod."
  }
}