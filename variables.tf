variable "bucket_name" {
  type    = string
  default = "Name of the bucket to create"
}

variable "tags" {
  type        = map
  description = "A map of tags to add to all resources"
  default     = {}
}

# Bucket Life cycle policies
variable "standard_ia_transition_days" {
  type    = number
  default = 30
}

variable "glacier_transition_days" {
  type    = number
  default = 60
}

variable "expiration" {
  type    = number
  default = 90
}
