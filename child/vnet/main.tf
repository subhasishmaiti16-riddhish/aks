resource "azurerm_virtual_network" "vnet-child" {
    for_each = var.vnet-child
  name = each.value.vnet-name
  resource_group_name = each.value.rg-name
  location = each.value.location
  address_space = ["10.0.0.0/16"]
}