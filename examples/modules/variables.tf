variable "org_prefix" {
  description = "A prefix representing the organization or company. This is an optional component of the resource name."
  type        = string
  default     = ""
}

variable "env" {
  description = "The environment for which the resource is being created, e.g., dev, qa, prod."
  type        = string
  default     = ""
}

variable "project" {
  description = "The name of the project or application for which the resource is being created."
  type        = string
}

variable "resource_type" {
  description = "The type of resource being named, e.g., rg for Resource Group, vm for Virtual Machine."
  type        = string
}

variable "suffix" {
  description = "An optional suffix for additional identification, such as a region code or a sequence number."
  type        = string
  default     = ""
}
