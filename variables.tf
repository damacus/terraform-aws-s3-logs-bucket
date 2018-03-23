variable "bucket_name" {
  default = "Name of the bucket to create"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

# Bucket Life cycle policies
variable "standard_ia_transition_days" {
  default = 30
}

variable "glacier_transition_days" {
  default = 60
}

variable "expiration" {
  default = 90
}
