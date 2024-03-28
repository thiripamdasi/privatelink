Connect-AzAccount -UseDeviceAuthentication 
New-AzStorageAccount -name practeststorage1 -ResourceGroupName privatelink-prac2 -SkuName Standard_LRS -location centralus -kind Storagev2
