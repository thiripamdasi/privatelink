# Connect-AzAccount -UseDeviceAuthentication 
# New-AzStorageAccount -name practeststorage2 -ResourceGroupName privatelink-prac2 -SkuName Standard_LRS -location centralus -kind Storagev2

# Connect to Azure using device authentication
Connect-AzAccount -UseDeviceAuthentication

# Define parameters
$resourceGroupName = "privatelink-prac2"
$storageAccountName = "practeststorage2"
$location = "centralus"
$skuName = "Standard_LRS"

# Check if the resource group exists, if not, create it
# if (!(Get-AzResourceGroup -Name $resourceGroupName -ErrorAction SilentlyContinue)) {
#     New-AzResourceGroup -Name $resourceGroupName -Location $location
# }

# Create a new Azure Storage account
New-AzStorageAccount -ResourceGroupName $resourceGroupName -Name $storageAccountName -Location $location -SkuName $skuName -Kind StorageV2
