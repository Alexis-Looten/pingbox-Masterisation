# PingBox Masterisation

### Requirements: 
* Linux
* Cluster SSH
* Raspberry Pi image
* Hub USB
* MicroSD + USB-MicroSD Reader
* PingBox's image to flash Raspberry sd card (**mother.img**) => [Wiki PingBox Accueil](https://pingcode.io/pingflow/products/pingplay/pingbox/-/wikis/home) 

## Faire en sorte que l’image occupe tout l’espace disponible sur la carte Micro SD :
Utilisez la commande : ```sudo raspi-config```
* Choisissez l’option 6 : “Advanced Options”
* Choisissez l’option A1 : “Expand Filesystem”
* redémarrez le Raspberry Pi

(Faisable avec cluster ssh pour le faire sur plusieurs machines en même temps)   

Si votre ordinateur n’est pas sous linux, vous pouvez utiliser une machine virtuelle Linux grâce à l’application **[VirtualBox : Oracle VM 
VirtualBox](https://www.virtualbox.org/)** .

Il est recommandé de posséder un **Hub USB** ainsi qu’un certain nombre de lecteurs de cartes Micro SD en USB afin de flash un maximum de 
cartes en une fois.

Pour exécuter le script vous aurez besoin d’une image (un fichier en .img) à installer sur les cartes Micro SD. 
Vous pouvez utiliser une image personnalisée ou tout simplement utiliser les images fournies par le site Raspberry Pi :
**[Operating system images – Raspberry Pi](https://www.raspberrypi.org/software/operating-systems/#raspberry-pi-os-32-bit)**.
Pour pouvoir lancer la même commande sur tous les Raspberry une fois que les cartes seront flashées et ainsi optimiser le paramétrage de ceux-ci, 
il faut installer l’application **Cluster SSH**: 

Pour cela, tapez la commande suivante dans l’invite de commande : ```sudo apt-get install clusterssh```. 
Ne pas oublier de mettre à jour sa machine avec la commande suivante ``sudo apt-get update && sudo apt-get upgrade`` avant d’installer Cluster SSH.
Pour plus d’aide concernant Cluster SSH consultez le document : **[Raspberry Pi : Aide](https://pingcode.io/pingflow/products/pingplay/pingbox/-/wikis/Aide-Raspberry)**.

Il est très important que tous les fichiers se trouvent dans le même dossier.
