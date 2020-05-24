rgName=matt-k8-rg

az group create --name=$rgName --location=eastus

az aks create --resource-group=$rgName --name=matt-cluster --generate-ssh-keys