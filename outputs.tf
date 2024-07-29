output "resource_name" {
  description = "The constructed resource name based on the provided name generator."
  value       = local.name
}

output "name_length" {
  description = "The length of the constructed resource name."
  value       = length(local.name)
}