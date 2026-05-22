variable "bucket_name" {
  description = "The name of the bucket"
  type        = string
}

variable "versioning_enabled" {
  description = "Whether to enable versioning for the bucket"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
