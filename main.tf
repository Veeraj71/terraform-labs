# 1. Input Variable Declarations
variable "environment" {
  type        = string
  description = "The deployment environment (dev, staging, prod)"
  default     = "dev"
}

variable "file_count" {
  type        = number
  description = "Number of configuration files to generate"
  default     = 2
}

# 2. Local variables for string manipulation
locals {
  project_name = "aspire-ops"
}

# 3. Dynamic Resource Block using count
resource "local_file" "dynamic_configs" {
  count    = var.file_count
  filename = "${path.module}/configs/${var.environment}-${local.project_name}-node-${count.index + 1}.conf"
  content  = <<EOT
=========================================
PROJECT:  ${upper(local.project_name)}
ENV:      ${upper(var.environment)}
NODE ID:  ${count.index + 1}
STATUS:   Active and Managed by Terraform
=========================================
EOT
}

# 4. Output block to print generated file paths
output "generated_files" {
  value       = local_file.dynamic_configs[*].filename
  description = "The absolute paths of the created configuration files."
}