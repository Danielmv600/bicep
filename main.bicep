targetScope = 'resourceGroup'

param storageAccountName string = 'mybicepstorageacct'
param secondStorageAccountName string = 'danielstorageacct'
param location string = resourceGroup().location

resource storage1 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource storage2 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: secondStorageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

