variable "create_role" {
  type        = bool
  default     = false
  description = "these variables allow creating the resource IAM role"
}

variable "create_policy" {
  type        = bool
  default     = false
  description = "these variables allow creating the resource IAM policy"
}

variable policy {
  type        = any
  default     = []
  description = "all configuration of iam policy"
}

variable "identifiers_role" {
  type        = list(string)
  default     = ["ec2.amazonaws.com"]
  description = "list of service for aws"
}

variable "role_name" {
  type        = string
  default     = ""
  description = "(Optional, Forces new resource) Friendly name of the role. If omitted, Terraform will assign a random, unique name. See IAM Identifiers for more information."
}

variable "policy_arn" {
  type        = list(string)
  default     = []
  description = "list of ARN policies for attachment role"
}


variable "description_policy" {
  type        = string
  default     = ""
  description = "Description of the IAM policy."
}

variable "name_policy" {  
  type        = string
  default     = ""
  description = "(Optional, Forces new resource) The name of the policy. If omitted, Terraform will assign a random, unique name."
}

variable "path_policy" {  
  type        = string
  default     = "/"
  description = " (Optional) Path in which to create the policy. See IAM Identifiers for more information."
}


variable "policy_document" {  
  type        = string
  default     = null
  description = "The policy document. This is a JSON formatted string."
}

variable "tags" {
  type        = any
  default     = null
  description = "all tags for all recursives"
}
