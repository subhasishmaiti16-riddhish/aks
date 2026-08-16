resource "azurerm_resource_group" "rg-child" {
  for_each = var.rg-child
  name = each.value.rg-name
  location = each.value.location
}