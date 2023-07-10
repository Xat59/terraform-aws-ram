# RAM Resource Share variables.
variable "resource_share_name" {
  description = "(Required) The name of the resource share."
  type        = string
}

variable "resource_share_allow_external_principals" {
  description = "(Optional) Indicates whether principals outside your organization can be associated with a resource share."
  type        = bool
  default     = false
}

variable "resource_share_permission_arns" {
  description = "(Optional) Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share."
  type        = set(string)
  default     = null
}

# RAM Principal Association variables
variable "principals" {
  description = "(Required) List of principals to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN."
  type        = list(string)
}

# RAM Resource Association variables
variable "resources" {
  description = "(Required) List of Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share."
  type        = list(string)
}
