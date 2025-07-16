targetScope = 'resourceGroup'

param storageAccountName string = 'mybicepstorageacct'
param location string = resourceGroup().location

// First storage account
resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

// Second storage account (named 'danielcpudf')
resource storageDaniel 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'danielcpudf'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
