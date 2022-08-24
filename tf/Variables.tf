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

variable "sp_object_id" {
  type      = string
  sensitive = true
}

variable "moein_obj_id" {
  type      = string
  sensitive = true
}

variable "ARM_CLIENT_ID" {
  type      = string
  sensitive = true
}

variable "ARM_CLIENT_SECRET" {
  type      = string
  sensitive = true
}