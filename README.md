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
  -  Une machine virtuelle Linux Ubuntu 22 LTS qui servira de serveur Terraform 
## Configuration
### Commandes a réalisées sur la machine virtuelle qui héberge Terraform
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
