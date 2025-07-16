// main.bicep
targetScope = 'resourceGroup'

param storageAccountName string = 'mybicepstorageacct'
param location string = resourceGroup().location

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
