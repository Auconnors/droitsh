#!/bin/bash

# Création des groupes
sudo groupadd realisation
sudo groupadd administratif
sudo groupadd management
sudo groupadd travailcommun
sudo groupadd consulter

# Création des utilisateurs
sudo useradd -m -c "Lorna Jenkins" -s /bin/bash -g realisation ljenkins
echo "Entrez un mot de passe pour l'utilisateur ljenkins:"
sudo passwd ljenkins
sudo useradd -m -c "Morgan Cox" -s /bin/bash -g realisation mcox
echo "Entrez un mot de passe pour l'utilisateur mcox:"
sudo passwd mcox
sudo useradd -m -c "Daniel Jones" -s /bin/bash -g realisation djones
echo "Entrez un mot de passe pour l'utilisateur djones:"
sudo passwd djones
sudo useradd -m -c "Taylor Santana" -s /bin/bash -g realisation tsantana
echo "Entrez un mot de passe pour l'utilisateur tsantana:"
sudo passwd tsantana
sudo useradd -m -c "Donna Wilson" -s /bin/bash -g administratif dwilson
echo "Entrez un mot de passe pour l'utilisateur dwilson:"
sudo passwd dwilson
sudo useradd -m -c "Francois Mercer" -s /bin/bash -g management fmercer
echo "Entrez un mot de passe pour l'utilisateur fmercer:"
sudo passwd fmercer

# Ajout des utilisateurs aux groupes
sudo usermod -a -G realisation,travailcommun,consulter,management fmercer
sudo usermod -a -G realisation,travailcommun,consulter mcox
sudo usermod -a -G realisation,travailcommun,consulter djones
sudo usermod -a -G realisation,travailcommun,consulter ljenkins
sudo usermod -a -G administratif,travailcommun,consulter dwilson 

# Création des répertoires
sudo mkdir /home/dossiertravail
sudo mkdir /home/dossiertravail/realisation
sudo mkdir /home/dossiertravail/management
sudo mkdir /home/dossiertravail/administratif
sudo mkdir /home/dossiertravail/consulter
sudo mkdir /home/dossiertravail/travailcommun

# Attribution des propriétaires des répertoires
sudo chown -R root:consulter /home/dossiertravail
sudo chown -R fmercer:realisation /home/dossiertravail/realisation
sudo chown -R fmercer:management /home/dossiertravail/management
sudo chown -R fmercer:administratif /home/dossiertravail/administratif
sudo chown -R fmercer:consulter /home/dossiertravail/consulter
sudo chown -R fmercer:travailcommun /home/dossiertravail/travailcommun

# Attribution des permissions sur les répertoires
sudo chmod 750 /home/dossiertravail
sudo chmod 560 /home/dossiertravail/realisation
sudo chmod 560 /home/dossiertravail/administratif
sudo chmod 700 /home/dossiertravail/management
sudo chmod 760 /home/dossiertravail/consulter
sudo chmod 760 /home/dossiertravail/travailcommun
