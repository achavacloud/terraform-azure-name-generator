output "generated_resource_name" {
  description = "The constructed resource name from the naming module."
  value       = module.name-generator.resource_name
}

output "generated_name_length" {
  description = "The length of the constructed resource name."
  value       = module.name-generator.name_length
}