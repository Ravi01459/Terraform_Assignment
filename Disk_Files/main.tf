resource "azurerm_resource_group" "example" {
  name     = var.rgname
  location = var.loc
}

resource "azurerm_managed_disk" "source" {
  name                 = "TS-DEV-APP-DISK"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = "100"

  tags = {
    environment = "DEV"
    CreatedBy   = "TSteam"
  }
}

resource "azurerm_managed_disk" "copy" {
  name                 = "TS-DEV-APP-DATADISK"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Premium_LRS"
  create_option        = "Copy"
  source_resource_id   = azurerm_managed_disk.source.id
  disk_size_gb         = "100"

  tags = {
    environment = "DEV"
    CreatedBy   = "TSteam"
  }
}

resource "azurerm_managed_disk" "copy1" {
  name                 = "TS-DEV-APP-LOGDISK"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Premium_LRS"
  create_option        = "Copy"
  source_resource_id   = azurerm_managed_disk.source.id
  disk_size_gb         = "100"

  tags = {
    environment = "DEV"
    CreatedBy   = "TSteam"
  }
}

resource "azurerm_managed_disk" "copy2" {
  name                 = "TS-DEV-APP-OSDISK"
  location             = azurerm_resource_group.example.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Premium_LRS"
  create_option        = "Copy"
  source_resource_id   = azurerm_managed_disk.source.id
  disk_size_gb         = "100"

  tags = {
    environment = "DEV"
    CreatedBy   = "TSteam"
  }
}
