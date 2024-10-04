module "rg" {
  source = "../rg"
  rg     = var.rg1
}

module "vnet" {
  source     = "../vnet"
  vnet       = var.vnet1
  depends_on = [module.rg]
}

module "subnet" {
  source     = "../subnet"
  subnet     = var.subnet1
  depends_on = [module.vnet]
}

module "virtual" {
  source     = "../virtual machine"
  virtual    = var.virtual1
  depends_on = [module.subnet]

}