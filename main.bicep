resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'my-bicep-rg'
  location: 'eastus'
}

resource storage 'Microsoft.Storage/storageAccounts@2021-04-01' = {
  name: 'mybicepstorageacct'
  location: rg.location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
