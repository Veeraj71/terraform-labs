# modules/file_generator/main.tf

variable "filename_input" {
  type        = string
  description = "Name of the target file"
}

variable "payload_content" {
  type        = string
  description = "Content to inject into the file"
}

resource "local_file" "templated_output" {
  filename = "${path.module}/../../outputs/${var.filename_input}"
  content  = <<EOT
=========================================
MODULAR DEPLOYMENT ACTIVE
TARGET:  ${var.filename_input}
PAYLOAD: ${var.payload_content}
=========================================
EOT
}