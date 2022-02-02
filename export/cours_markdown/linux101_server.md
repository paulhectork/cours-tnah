## # SERVEURS SOUS LINUX
---
## Machines virtuelles

- idée de base : les machines peuvent aujourd'hui **utiliser plusieurs systèmes d'exploitation** => VMs permettent de faire tourner **plusieurs OS**
- **virtualisation** : 
	- plus simplement : substituer à un élément de matériel informatique (hardware) – tel un ordinateur ou une console de jeux – un logiciel
	- processus qui fait croire à un OS qu'il tourne sur du vrai hardware alors qu'il tourne sur du software qui fait le lien avec du hardware (une VM debian fait croire à debian qu'on utilise debian comme OS principal alors qu'on utilise debian sur du ubuntu et que ubuntu fait la communication debian-hardware)
- **emulation** : variante de la virtualisation qui permet d'accélerer le processus
- **hyperviseur** : logiciel de virtualisation qui permet de lancer plusieurs OS invités
	- **hyperviseur de type 1** : un noyau système très léger et optimisé pour gérer les accès des noyaux d'OS invités à l'architecture matérielle sous-jacente (il y a aussi des hyperviseurs de type 2, +lourds)

**lancer virtual machine manager** : `virt-machine` dans le terminal

---
**socket, coeur, thread**
- `socket` : processeur physique (combien de processeurs sont connectés au software)
- `core / cœur` : processeur logique
- `thread` : virtualisation des processeurs (pas compris)


---
## réseau et HTTP

- une machine a une **adresse IP par défaut** (indentifiant individuel) et une **passerelle par défaut** (serveur par défaut pour se connecter à internet)
- **adresse IP de ma machine** : `192.168.122.148`
- **passerelle par défaut** : `192.168.122.0`