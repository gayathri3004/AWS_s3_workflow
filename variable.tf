variable "bucket_name" {
  description = "The name of the S3 bucket."
}

variable "bucket_acl" {
  description = "The access control list (ACL) for the bucket."
  type        = string
  default     = "private"
  validation {
    condition     = can(regex("^private$|^public-read$|^public-read-write$|^authenticated-read$", var.bucket_acl))
    error_message = "Invalid bucket ACL. Valid values are: private, public-read, public-read-write, authenticated-read."
  }
}

variable "versioning_enabled" {
  description = "Whether versioning should be enabled for the bucket."
  type        = bool
  default     = false
}

variable "region" {
  description = "The AWS region."
  default     = "us-east-1"
}