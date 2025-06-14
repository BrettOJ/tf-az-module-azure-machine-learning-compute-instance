resource "azurerm_machine_learning_compute_instance" "az_ml_ci" {
  name                          = module.azml_compute_instance_name.naming_convention_output[var.naming_convention_info.name].names.0
  machine_learning_workspace_id = var.machine_learning_workspace_id
  virtual_machine_size          = var.virtual_machine_size
  authorization_type            = var.authorization_type
  local_auth_enabled            = var.local_auth_enabled
  node_public_ip_enabled        = var.node_public_ip_enabled
  subnet_resource_id            = var.subnet_resource_id
  description                   = var.description
  tags                          = var.tags
  dynamic assign_to_user {
    for_each = var.assign_to_user != null ? [1] : []
    content {
      object_id = var.assign_to_user.object_id
      tenant_id = var.assign_to_user.tenant_id
    }
  }

  identity {
    type         = var.identity.type
    identity_ids = var.identity.identity_ids
  }

  ssh {
    public_key = var.ssh.public_key
  }
}

