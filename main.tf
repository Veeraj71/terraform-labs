# Root main.tf - Workspace Lab

# Global local variables that auto-detect the current workspace
locals {
  current_env  = terraform.workspace
  project_name = "aspire-core"
}

# Calling our Day 10 module dynamically based on workspace!
module "env_specific_config" {
  source          = "./modules/file_generator"
  filename_input  = "${local.current_env}-service.meta"
  payload_content = "Automated deployment running inside the ISOLATED [${upper(local.current_env)}] workspace."
}