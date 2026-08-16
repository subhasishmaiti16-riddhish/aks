module "rg-parent" {
  source   = "../child/rg"
  rg-child = var.rg-parent
}

module "vnet-parent" {
  depends_on = [module.rg-parent]
  source     = "../child/vnet"
  vnet-child = var.vnet-parent

}

module "subnet-parent" {
  depends_on   = [module.vnet-parent]
  source       = "../child/subnet"
  subnet-child = var.subnet-parent

}
