targetScope = 'resourceGroup'

param location string = resourceGroup().location

// First storage account
resource storage1 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'mystorageacct1'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

// Second storage account
resource storage2 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'mystorageacct2'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}


