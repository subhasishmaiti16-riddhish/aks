rg-parent = {
  rg-parent1 = {
    rg_name  = "rg-git"
    location = "centralindia"
  }
}

vnet-parent = {
  vnet-parent1 = {
    vnet_name = "vnet-git"
    rg_name   = "rg-git"
    location  = "centralindia"
  }
}

subnet-parent = {
  subnet-parent1 = {
    subnet_name = "subnet-git"
    rg_name     = "rg-git"
    vnet_name   = "vnet-git"
  }
}
