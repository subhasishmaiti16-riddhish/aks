module "rg-parent" {
  source   = "../child/rg"
  rg-child = var.rg-parent
}

module "vnet-parent" {
  depends_on = [module.rg-parent]
  source     = "../child/vnet"
  vnet-child = var.rg-parent

}
