targetScope = 'resourceGroup'

param location string = resourceGroup().location
param storageAccountName1 string
param storageAccountName2 string

resource storage1 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName1
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource storage2 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName2
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}


