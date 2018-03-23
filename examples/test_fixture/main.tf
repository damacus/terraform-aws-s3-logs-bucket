module "logs_bucket" {
  source      = "../../"
  bucket_name = "alb.logs.example"

  tags = {
    Environment = "Environment-tag"
    Project     = "Project-tag"
    Stack       = "Stack-tag"
  }
}
