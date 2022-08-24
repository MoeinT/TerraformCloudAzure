variable "suffix" {
  type        = string
  description = "This suffix will be used in the name of most resources"
  default     = "terraformcloud"
}

variable "project" {
  type        = string
  description = "Application project name"
}

variable "location" {
  type    = string
  default = "France Central"
}

variable "environment" {
  type = string
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