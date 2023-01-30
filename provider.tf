provider "azurerm" {
  features {}

  subscription_id = "4cc1d61e-bd4c-4907-8cbe-a77c68bbe894"
  client_id       = "b9f74ac1-23a9-4da6-b866-48b540a9bd76"
  client_secret   = "lJc8Q~vpNFdcn5RvkK_RnHpBKY~3I_.vHvBx7a1b"
  tenant_id       = "2302aae0-dfd8-430f-9aff-ad19ca75ab30"
}

terraform {
  backend "azurerm" {
    storage_account_name = "sa23e35454654"
    container_name       = "container1"
    key                  = "dev.tfstate"

    access_key = "EHt9OyR/po+Rgut5zskkldYwPKO7PbtUn3darHIY2BgJoSUuvyoki6Seo9woEoa7zMLSOkK6rpjy+ASthX9XDA=="
  }
}

