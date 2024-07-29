variable "org_prefix" {
  description = "Prefix representing the organization or company."
  type        = string
  default     = ""
}

variable "env" {
  description = "The environment (e.g., dev, prod)."
  type        = string
}

variable "project" {
  description = "The project or application name."
  type        = string
}

variable "resource_type" {
  description = "The type of the resource (e.g., rg for Resource Group, vnet for Virtual Network)."
  type        = string
}

variable "suffix" {
  description = "Any additional information to include in the resource name."
  type = string
}