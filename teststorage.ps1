Connect-AzAccount -UseDeviceAuthentication 
New-AzStorageAccount -name practeststorage2 -ResourceGroupName privatelink-prac2 -SkuName Standard_LRS -location centralus -kind Storagev2
