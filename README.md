# TP3 - Terraform
## Résumé du projet
Le client de Move2Cloud souhaite migrer son infrastructure vers le cloud. Nous allons créer un prototype en utilisant Terraform pour déployer les ressources nécessaires sur Azure.
### Ressources à déployer
-  Groupe de ressource
-  Compte de stockage
-  Une deuxième machine virtuelle Linux Ubuntu 22 LTS (accessible en ssh)
## Pré-requis
  -  Terraform
  -  Azure CLI
  -  Un compte Microsoft Azure
  -  Une machine virtuelle Linux Ubuntu 22 LTS
## Contenu du Repository
  -  **main.tf**: Fichier principal qui permet de créer les ressources vers Azure. Cet exemple permet de créer un group de ressource.
```
# Create a resource group
resource "azurerm_resource_group" "example" {
  name                     = "tp3resourcegroup"
  location                 = var.location
}
```
  -  **README.md**: Fichier de documentation expliquant le projet et fournissant des instructions pour le configurer et l'exécuter.
  -  **variables.tf**: Fichier utilisé par **main.tf** qui permet de créer des variables. Cet exemple permet de créer une variable location qui défini la région dans laquelle les ressources seront déployés.
```
variable "location" {
    description = "Azure region to deploy the ressources."
    type        = string
    default     = "westus2"
}
```
  -  **versions.tf**: Fichier qui permet de définir les providers utilisés par Terraform, dans notre cas c'est Azure.
## Configuration
### Etapes a réalisées sur la machine virtuelle principale
### Installation de Azure CLI
```
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```
### Installation de Terraform
#### Vérifie que le système est mis à jour
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```
#### Installe la clé GPG HashiCorp
```
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
```
#### Vérifie l'empreinte digitale de la clé
```
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
```
#### Met à jour les paquets
```
sudo apt update
```
#### Installe Terraform
```
sudo apt-get install terraform
```
## Vérifier l'installation de Terraform
```
terraform -help
```
## Connexion à Azure
```
az login
```
## Récupération du subscription ID
```
az account list --query "[].{name:name, subscriptionId:id}"
az ad sp create-for-rbac --role="Contributor"
--scopes="/subscriptions/<YourSubscriptionId>"
```
### Résultats des commandes au format json
```
{
  "appId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
  "displayName": "azure-cli-2020-04-01-10-31-17",
  "name": "http://azure-cli-2020-04-01-10-31-17",
  "password": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
  "tenant": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
}
```
### Set des variables d'environnement
Il faut modifier les parametrès entre "<>" par vos valeurs à vous
```
export ARM_SUBSCRIPTION_ID=<SubscriptionId>
export ARM_CLIENT_ID=<appI>
export ARM_CLIENT_SECRET=<password>
export ARM_TENANT_ID=<tenant>
```
