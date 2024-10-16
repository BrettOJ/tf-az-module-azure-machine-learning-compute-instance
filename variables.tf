variable "machine_learning_workspace_id" {
  type        = string
  description = " (Required) The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Instance to be created."
}

variable "virtual_machine_size" {
  type        = string
  description = " (Required) The Virtual Machine Size. Changing this forces a new Machine Learning Compute Instance to be created."
}

variable "authorization_type" {
  type        = string
  description = " (Optional) The Compute Instance Authorization type. Possible values include: personal. Changing this forces a new Machine Learning Compute Instance to be created."
}

variable "description" {
  type        = string
  description = " (Optional) The description of the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created."
}

variable "local_auth_enabled" {
  type        = bool
  description = " (Optional) Whether local authentication methods is enabled. Defaults to true. Changing this forces a new Machine Learning Compute Instance to be created."
}

variable "subnet_resource_id" {
  type        = string
  description = " (Optional) Virtual network subnet resource ID the compute nodes belong to. Changing this forces a new Machine Learning Compute Instance to be created."
}

variable "node_public_ip_enabled" {
  type        = bool
  description = " (Optional) Whether the compute instance will have a public ip. To set this to false a subnet_resource_id needs to be set. Defaults to true. Changing this forces a new Machine Learning Compute Cluster to be created."
}

variable "tags" {
  type        = map(string)
  description = " (Optional) A mapping of tags which should be assigned to the Machine Learning Compute Instance. Changing this forces a new Machine Learning Compute Instance to be created."
}

variable "identity" {
  type = object({
    type         = string
    identity_ids = list(string)
  })
  description = "An identity block supports the following:"
}

variable "assign_to_user" {
  type = object({
    object_id = string
    tenant_id = string
  })
  description = "A assign_to_user block supports the following:"
}

variable "ssh" {
  type = object({
    public_key = string
  })
  description = "A ssh block supports the following:"
}
