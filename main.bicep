@maxLength(11)
param storageAccountPrefix string
param location string = resourceGroup().location

var sta ='${storageAccountPrefix}${uniqueString(subscription().id)}'

resource storageAccount 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'standard_LRS'
  }
}


