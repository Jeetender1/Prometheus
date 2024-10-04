
rg1 = {
  resource = {
    name     = "rg"
    location = "West Europe"
  }
}

vnet1 = {
  vnets = {
    name                = "vnet"
    location            = "West Europe"
    resource_group_name = "rg"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

subnet1 = {
  subnets = {
    name                 = "subnet"
    resource_group_name  = "rg"
    virtual_network_name = "vnet"
    address_prefixes     = ["10.0.1.0/24"]

  }
}

virtual1 = {
    vm1 = {
        nic_name = "vm1nic"
        location = "West Europe"
        resource_group_name = "rg"
        subnet_name = "subnet"
        virtual_network_name = "vnet"
        virtual_machine_name = "vm1"
        public_ip_name = "vm1pip"
        size = "Standard_DS1_v2"
        admin_username = "devopsadmin"
        admin_password = "p@ssword1" 
    }
    vm2 = {
        nic_name = "vm2nic"
        location = "West Europe"
        resource_group_name = "rg"
        subnet_name = "subnet"
        public_ip_name = "vm2pip"
        virtual_network_name = "vnet"
        virtual_machine_name = "vm2"
        size = "Standard_DS1_v2"
        admin_username = "devopsadmin"
        admin_password = "p@ssword1" 
    }
    centralvm   = {
        nic_name = "centralnic"
        location = "West Europe"
        public_ip_name = "centralvmpip"
        resource_group_name = "rg"
        subnet_name = "subnet"
        virtual_network_name = "vnet"
        virtual_machine_name = "centralvm"
        size = "Standard_DS1_v2"
        admin_username = "devopsadmin"
        admin_password = "p@ssword1" 
    }
}
