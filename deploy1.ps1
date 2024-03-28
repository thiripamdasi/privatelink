param (
    [string] $resourceGroupName = "privatelink-prac",
    [string] $deploymentName = "VirtualNetworkLinkDeployment",
    [string] $templateFilePath = "vnetlinks.json",
    [string] $privateDnsZoneName = "testingprivatedns.com",
    [string] $virtualNetworkLinkName = "testingvnetlink",
    [string] $virtualNetworkId = "/subscriptions/903a670d-9ae6-42f6-8495-12fd1d7e01cf/resourceGroups/privatelink-prac2/providers/Microsoft.Network/virtualNetworks/vnet01"
)

# Log in to Azure account
Connect-AzAccount -UseDeviceAuthentication 

# Select Azure subscription (if multiple subscriptions are available)
# Select-AzSubscription -SubscriptionId "<subscription-id>"

# Deploy ARM template
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -Name $deploymentName `
    -TemplateFile $templateFilePath `
    -privateDnsZoneName $privateDnsZoneName `
    -virtualNetworkLinkName $virtualNetworkLinkName `
    -virtualNetworkId $virtualNetworkId
