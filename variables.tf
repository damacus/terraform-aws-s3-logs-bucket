variable "bucket_name" {
  type    = string
  default = "Name of the bucket to create"
}

variable "tags" {
  type        = map(any)
  description = "A map of tags to add to all resources"
  default     = {}
}

# Bucket Life cycle policies
variable "standard_ia_transition_days" {
  type    = number
  default = 90
}

variable "glacier_transition_days" {
  type    = number
  default = 180
}

variable "expiration_days" {
  type    = number
  default = 365
}

variable "mfa_delete" {
  type        = bool
  default     = false
  description = "(optional) Enable MFA delete on the bucket"
}

variable "bucket_versioning" {
  type        = bool
  default     = false
  description = "(optional) Enable versioning on the bucket"
}
