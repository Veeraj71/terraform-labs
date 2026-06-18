# Root main.tf

# Call 1: Deploying App Configuration via Module
module "app_config" {
  source          = "./modules/file_generator"
  filename_input  = "app-service.meta"
  payload_content = "Microservice routing setup via root registry."
}

# Call 2: Deploying Database Parameters via SAME Module
module "db_config" {
  source          = "./modules/file_generator"
  filename_input  = "database.meta"
  payload_content = "DB connection pooling and cluster thresholds."
}