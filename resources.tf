locals {
  # Unique identifier components for the resource name
  name = format("%s-%s-%s-%s-%s",
      var.org_prefix != "" ? lower(var.org_prefix) : "default",
      var.env != "" ? lower(var.env) : "env",
      var.project != "" ? lower(var.project) : "project",
      var.resource_type != "" ? lower(var.resource_type) : "type",
      var.suffix != "" ? lower(var.suffix) : format("%04d", random_id.id.hex)
  )
}

resource "random_id" "id" {
  byte_length = 2
}

resource "null_resource" "validate_name_length" {
  count = length(local.name) <= 5 ? 0 : 1
  triggers = {
    name_length = length(local.name)
  }

  provisioner "local-exec" {
    command = "echo 'The constructed resource name exceeds the maximum length of 80 characters'"
    when    = create
  }
}
