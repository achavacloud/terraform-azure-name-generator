## Terraform Azure Naming Convention Module

This Terraform module enforces a standardized naming convention for Azure resources, ensuring consistency and clarity across all deployments.

```hcl
module "naming" {
  source         = "../../"
  org_prefix     = "corp"
  project        = "hr"
  resource_type  = "rg"
  suffix         = "001"
  env            = "ev"
}

output "resource_name" {
  value = module.naming.resource_name
}
```

| Name           | Description                                                                 | Type   | Default | Required |
|----------------|-----------------------------------------------------------------------------|--------|---------|----------|
| org_prefix     | A prefix representing the organization or company.                          | string | ""      | no       |
| project        | The name of the project or application for which the resource is created.   | string | n/a     | yes      |
| resource_type  | The type of resource (e.g., rg for Resource Group, vm for Virtual Machine). | string | n/a     | yes      |
| suffix         | An optional suffix for additional identification (e.g., region or number).  | string | ""      | no       |
| env            | The environment for the resource (e.g., dev, qa, prod).                     | string | ""      | no       |

#### Description:

The module constructs a standardized name for Azure resources by concatenating the following components:

	1.org_prefix: An optional prefix representing the organization or company.
	2.env: The environment, such as development, QA, or production.
	3.project: The project or application name.
	4.resource_type: The type of the resource, aiding in identification.
	5.suffix: An optional suffix for additional information like a region code or unique identifier.

The constructed name ensures consistency, readability, and adherence to Azure naming conventions, helping to manage resources across different projects and environments.

Example Outputs:

For the provided inputs:

	1.org_prefix: corp
	2.env: dev
	3.project: hr
	4.resource_type: rg
	5.suffix: 001

The resulting resource name would be:
```shell
"corp-dev-hr-rg-001"
```

This naming pattern helps maintain a clear and organized structure for resource management, making it easier to identify and manage resources within Azure.

Notes

	•The module includes a null_resource with a local-exec provisioner to warn if the constructed name exceeds 80 characters, ensuring compliance with Azure’s naming restrictions.
	•A random_id resource is available to generate a unique identifier if a suffix is not provided, ensuring uniqueness in resource names.

This module is designed to be used as part of a larger Terraform infrastructure configuration, where consistent resource naming is crucial for management, monitoring, and operational efficiency.