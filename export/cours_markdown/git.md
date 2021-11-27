# *GIT*

* * *

**support de cours** https://github.com/ponteineptique/cours-git

**examens**
[https://docs.google.com/document/d/17TE2bEg-4sMiin9\_kM4\_TyKH7eQGEHY8lNTWEFQHE8/edit#heading=h.gtvg6mijzj5e](https://docs.google.com/document/d/17TE2bEg-4sMiin9_kM4_TyKH7eQGEHY8lNTWEFQHE8/edit#heading=h.gtvg6mijzj5e)

- **devoir sur table** sans ordi sur les commandes, le fonctionnement…
- **projet collaboratif** avec dépôts sur GitHub (gros bitonnieau). Équipes de 4, toute idée est à valider en amont du cours du 3 novembre, devoir à rendre pour le 10 janvier
    - **projet d’OCR** ou d’HTR avec Transkribus…
    - **quantités** : 4 colonnes ou 4 pages pour un imprimé médiéval, 4 pages pour un incunable (1ers imprimés), 100 lignes minimum pour des lettres manuscrites, 5 pages d’appareil critique (notes de bas de page qui expliquent choix d’édition), 10 pages d’imprimé contemporain…
    - **contributions individuelles** sont notées en fonction de la qualité de la contribution (historique, pull requests, issues) et du suivi des normes établies par le groupe (validité des données)
    - **travail collectif** : qualité et traçabilité des travaux (`issue requests`, `pull requests`, capacité hypothétique d’arrivée de nouveaux participant.e.s en cours de projet), qualité de documentation du projet, intégration continue et validation des données issues du projet via actions GitHub

* * *

# CHAPITRE 1: LES BASES

**GIT, un outil de versionnage**

- **créé** en 2005 par Linul Thorvalds et Junio Hamano pour gérer le développement de Linux
- sous licence libre **GNU GPLv2**
- vient se rajouter à de plus anciens systèmes de versionnage: CVS, SVN (base de SourceForge...)

* * *

**principes généraux**

- on travaille dans un **dépôt/repository/repo**. Chaque dépôt contient un dossier caché .git qui conserve les archives enregistrées
- pour **archiver une modification**, il faut l’expliciter : modifications archivées = « commit », portent un message enregistré par l’utilisateur, peuvent comporter plusieurs fichiers
- **3 états** de fichiers :
    - **état de travail** : `working directory` (fichier a subi des modifications, mais il n’a pas été ajouté à un commit)
    - **état de transition** : `staging area` (fichier ajouté a un dépôt en cours de préparation/non finalisé)
		- `git add` fait passer un fichier du working dir au staging area
    - **état archivé** : `repository` (fichier a subi des modifications enregistrées et n'a pas été modifié depuis)
		- `git commit` transfère un fichier du staging area au repo
- git peut **archiver des fichiers compressés** (pdf, png…) mais ne pourra pas donner le détail des changements qui ont été faits
- **le fichier .gitignore** : dans un dépôt, fichier utilisé pour instruire d’ignorer certains fichiers. Il peut y avoir plusieurs gitignore, chaque .gitignore s’applique à E dossiers descendants
- **la branche `HEAD`** est la branche sur laquelle on travaille actuellement

* * *

**commandes principales de Git**

- **`git init`** : initialisation, création de la structure de données et du fichier .git
- **`git add`** : ajout de modifications. transfère un fichier **du working dir au staging area
    - `git add FICHIER` ajoute un fichier
    - `git add -A` ajoute tous les fichiers changés
- **`git status`** : donne l’état du dépôt, aka la liste des modifications réalisées
- **`git commit -m ‘‘MESSAGE’’`** : message du dépôt Git. Ne jamais oublier les guillemets
	- git commit transfère un fichier **du staging area au repository**
- **`git log`** : historique du repo
- **`git diff`** et **`git status`** pour obtenir l’état du repo.
    - `git diff` - différence détaillée
    - `git status` - point général sur l'état
- **`git checkout IDENTIFIANT-DE-COMMIT`** : revenir à un commit précédent ; pour revenir au commit actuel, mettre git checkout identifiant-de-commit-actuel

---
**changer les couleurs de git** (si on a du mal à lire)
- https://www.git-scm.com/book/en/v2/Customizing-Git-Git-Configuration
![a56274b6daf7c64ebee20fb1f007d784.png](../_resources/a56274b6daf7c64ebee20fb1f007d784.png)


---
**`.gitignore`**
- `.gitignore` est le fichier qui sert à préciser **les fichiers à exclure** que git n'ajoutera pas lors d'un dépôt (fichiers de mots de passe...)
- par défaut, le fichier se trouve **à la racine du dépôt**
	- on peut préciser **plusieurs `.gitignore`** dans d'autres dossiers
	- chaque `.gitignore` s'applique **au dossier courant et à ses descendants**
- chaque ligne d'un `.gitignore` précise le **chemin vers les fichiers à ignorer**: 
	```gitignore
	*.txt
	dossier/
	dossier2/*.jpg
	motdepasse.csv
	```

	| Ligne | Effet |
	| ------- | ------ |
	| `*.txt` | Cette ligne permettra d'ignorer tous les fichiers textes où qu'ils soient |
	| `dossier/` | Cette ligne ignorera l'ensemble du contenu de `dossier` et par extension, le dossier lui-même (Git ne conserve pas les dossiers vides) |
	| `dossier2/*.jpg` | Cette ligne ignorera les *.jpg dans le dossier2. Par contre, si dossier2 a des enfants (dossier2/sousdossier1) et des jpg à l'intérieur, il seront versionnés |
	| `motdepasse.csv` | Cet ligne permet d'ignorer le fichier motdepasse.csv dans le dossier principal |


---
**précision technique : git n'archive pas de fichiers**

Contrairement à ce que l'on pourrait penser, Git n'archive ou ne sauvegarde pas vos fichiers. Ce qu'il sauvegarde, ce sont les **modifications apportées à des fichiers**. Par exemple, si je crée un fichier toto.txt qui contient "toto" en ligne 1, il enregistrera:
```
-> Nouveau(toto.txt)
-> Content(toto.txt, "toto")
```
Si ensuite, j'ajoute une nouvelle ligne:
```
Content(toto.txt, "\nune nouvelle ligne")
```
Où \n est un retour à la ligne.

* * *

# CHAPITRE 2: LES BRANCHES ET CONFLITS

**les branches**

- c’est l’équivalent de **« sauvegarder sous »**, mais on peut versionner et sauvegarder plus facilement
- **branche `master` / `main`** : branche par défaut. Pour des raisons politiques, l’organisation master/slave est parfois remplacée par main… ; on ne travaille jamais sur main, qui sert plutôt à archiver une version stable
- **bonne pratique** : 1 branche `main`, 1 branche `dev`, 1 branche `bug`
- on peut travailler sur **plusieurs branches en parallèlle** pour travailler sur des problèmes différents et changer de tâche rapidement (travailler sur plusieurs bugs...)

* * *
*[COURS 3]*
**commandes des branches** 

- **`git branch BRANCHNAME`** : créer une branche
- **`git checkout`** : se déplacer dans une branche
    - `git checkout -b BRANCHNAME` ; se déplacer dans une branche et créer une branche en même temps
- **`git merge BRANCHNAME`** : rapatrier les modifications des branches nommées dans la branche active (celle où on se trouve actuellement)
	- commande utilisée par `git pull` pour incorporer les changements d'un autre repo dans notre repo

* * *

**merge conflicts et la résolution de conflits**
- a lieu en cas de **conflit de versionnage** :un fichier est rappatrié sur une branche avec `git merge` et que git n'arrive pas à ajouter les nouvelles modifications (problème d'overwrite)
- **mieux dit** : Merge conflict appears when you change the same part of the same file differently in the two branches you're merging together. Conflicts require developer to solve them by hand.
- **résolution de conflits** : Git édite les fichiers problématiques avec la syntaxe suivante, qui **montre les changements** dans la branche actuelle (nommée `HEAD`) et dans la branche à merge:
	```
		<<<<<<< branche-actuelle
		This is an edit on the master branch
		=======
		This is an edit on the branch
		>>>>>>> merge-branch-qui-crée-conflit
	```
	- **git ajoute** :
		- `<<<<<<<` suivi du nom de la branche dans laquelle on est, avec ensuite le contenu du fichier dans la branche dans laquelle on est
		- `=======` qui sépare le contenu du fichier dans les 2 branches
		- `>>>>>>>` suivi du nom de la branche que l'on voulait merge et qui cause le conflit, à la fin du contenu du fichier texte de la branche que l'on voulait merge
	- **faciliter la résolution** : `git checkout --conflict=diff3 [conflicting-file]` modifie le fichier à conflit pour montrer, dans la branche head, les modifications de la branche head + l'ancêtre commun du fichier dans la branche head et branche à merge (ce à quoi ressemblaient les lignes conflictuelles avant d'être modifiées sur les 2 branches)
	- **solution**: éditer le fichier pour résoudre les conflits et qu'il soit le même dans les deux branches :
		- éditer dans la branche master pour qu'il corresponde au fichier dans la branche que l'on veut merge
		- éditer dans la branche à merge pour qu'il corresponde au fichier dans la branche master
	- **je crois que je comprends encore assez mal** (éditer un fichier texte via git édite seulement les modifications faites et non tout le fichier, ce qui permet d'éditer récursivement le fichier entier sur les ordinateurs locaux ? je crois ??)

* * *

# CHAPITRE 3: TRAVAIL COLLABORATIF EN LIGNE

**Les services en ligne**

- **GitHub**: le plus utilisé. Propriété de Microsoft =>
    - problème éthique évident
    - n'est absolument pas un dépôt pérenne: dès que c'est plus rentable, ça ferme
    - les logiciels postés dessus ne sont ni forcément bons, ni forcément libres d'utilisation; leur code, par contre, est librement accessible
- **GitLab**: concurrent le plus sérieux de GitHub, FOSS
- **Forge**, utilisé par CNRS
- **Bitbucket**

* * *

**Fonctionnement**
Interaction à 3 parties pour chaque utilisateurice:

- **au niveau local**
    - espace de travail de l'utilisateur
    - espace de travail local des autres utilisateurices (leurs espaces locaux)
- **serveur de partage, stockage et collaboration** : serveur en ligne; les serveurs ne sont pas centralisés => un même repo peut se retrouver sur plusieurs serveurs (GitHub, Forge...)
![005b1b0b93d811009d01ceb4b9354d5d.png](../_resources/005b1b0b93d811009d01ceb4b9354d5d.png)

* * *

**Le vocabulaire**

- **Les serveurs et les dépôts**
    - **`remote server`**: serveur distant pour synchroniser le dépôt manuellement
    - **`origin server`**: nom du serveur principal (comme master est la branche principale)
    - **`clone`**: copie sur ordinateur local d'un dépôt trouvé en ligne
    - **`fork`**: dérivé du dépôt d'un.e développeureuse:
    - **`upstream`**: par convention, le nom d'un second serveur (en général, le serveur source du fork)
- **Agir sur un dépôt**
    - **`push`**: envoyer des modifications effectuées sur un serveur donné
    - **`pull`**: retrouver des informations depuis un serveur donné

* * *

**synchroniser git à un serveur distant**

[récupérer les commandes pour lier un dépôt Git local à GitHub]

- **ajouter un serveur distant**
    - `git remote add [url du serveur]`: ajouter un serveur distant à un dépôt local git
    - `git remote add origin [url du serveur]`: ajouter un serveur principal à un dépôt local
- **première synchronisation** :  `git push -u origin master`
	- envoie la branche actuelle sur la branche master du serveur origin
	- permet de synchroniser le dépôt local et le serveur distant: la branche master du serveur distant devient la branche master du dépôt
- **cloner un repo sur son serveur local** : `git clone [url]`
	- Un dépôt git en ligne est peu ou prou la même chose qu'un dépôt git local sauf que vous ne pouvez pas commit directement dessus. Il s'agit de l'archive ".git" de votre dépôt avec la capacité de se connecter et de synchroniser ces informations.
	- tous les dépôts git ne sont **pas tjs disponibles en écriture** : l'archive git définit les droits d'accès aux dépôts
	- par contre, on peut toujours **cloner localement un dépôt pour travailler dessus**, mais on ne pourra pas modifier le remote serveur sans droits d'écriture sur ce serbeur
- **bonnes pratiques de travail avec un serveur distant** (surtout quand on travaille avec plusieurs postes) :
	- faire `git status` en se connectant au serveur pour vérifier qu'il est dans l'état où on l'a laissé (ou que rien de bizarre ne s'est fait dessus
	- ensuite, `git pull` pour récupérer sur le poste sur lequel on est actuellement les modifications faites depuis un autre pull
	- travailler dans des branches bien définies et pas sur le master (duh)

* * *

# CHAPITRE 4 - COLLABORER AVEC GITHUB

* * *

**GitHub, GitLab et les plateformes de dépôt - pourquoi?**

- permet la **gestion d'équipe et de projet** \- avoir un espace partager pour déposer les données relatives aux projets
- permet **gestion des bugs et des issues**

* * *

**GitHub et la gestion des issues**

**Types d'issues**

- **bug** \- bonnes pratiques pour apprendre à les gérer
    - **nommer le bug**
    - dans le cadre d'un logiciel/appli/site, donner la **démarche pour reproduire** le bug
    - partager les **fichiers concernés par le bug** : quels fichiers ont potentiellement causé le bug
    - **décrire le problème**, même sur son propre dépôt
- **nouveauté** \- comment demander dvp de nv fonctionnalités:
    - **décrire nouveauté souhaiée** pour transférer la charge du dvp de la fonctionnalité / s'occuper soi-même du dvp plus tard
        - décrire le besoin
        - définir un cadre d'usage (à quoi ça va servir)
        - donner des pointeurs sur comment ça pourrait être fait
        - plus on mâche le travail dans un dépôt collaboratif, plus on a de chances que le besoin trouve une réponse
- **discussions** \- discussion entre membres du projet

**Gérer une issue**

- **attribuer l'issue** à un membre du dépôt pour que cette personne la prenne en charge; si un bugue me concerne, je peux me l'attribuer
- **attribuer un label** à une issue: mots clés pour mieux comprendre les différentes issues. Type de labels:
    - `bug` \- issue est un bug
    - `tech-debt` \- terme de gestion de projet informatique pour problèmes qui devraient être réglés à long terme et qui risquent de poser des pbs
- **regrouper les issues** dans des projects (projets regroupant plusieurs issues) et des milestones
- les issues ont des **numéros d'identification** ; s'y référer quand on parle d'une issue (noms d'issue peuvent changer)
- bonne pratique: donner aux titres d'issues des **identifiants** qui indiquent quels documents sont acceptés

**Rédiger une issue**

- **être poli**
- **être précis** : identifier le pb, identifier ce qui est affecté, identifier les solutions potentielles

* * *

**Les forks**

- **faire un fork depuis un dépôt** lorsqu'on ne veut travailler qu'avec une partie des données du dépôt
- faire le fork **sur son propre compte** pour avoir un repo forké en accès local
- fork permet **d'obtenir les droits d'écriture** sur le repo "forké" et de **travailler sur le dépôt localement**

* * *

**Collaborer : les `pull requests`**

- `pull request` \- demande d'autorisation de contribution à un dépôt
- une pull request se fait **entre deux branches, comme un merge**: on fait un pull request depuis un branch vers un autre. Cependant, les deux branches peuvent être des forks
- contribuer à un repository, c'est utile:
    - on aide la personne et les utilisateurices du repo
    - on apparaît sur l'historique
- **faire un *pull request* pour corriger une erreur**
    - ouvrir une issue expliquant le problème et proposant une modification
    - faire un fork du dépôt concerné
    - créer une branche spécifique pour résoudre le problème
    - bonne pratique: nommer la branche du nom de l'issue pour se souvenir de pourquoi on a créé la branche
    - faire la modification et la commit pour la pérenniser sur le fork
    - faire un push
    - faire un pull request sur le respository d'origine pour migrer sa correction dans le dépôt principal

* * *

# CHAPITRE 5 - INTÉGRATION CONTINUE ET TESTS

**L'intégration continue**

- **principes**
    - **vérifier à chaque modification** que celle-ci ne cause ni bug, ni régression
    - faire la vérification de **façon décentralisée pour toute l'équipe**, sur un serveur vierge (=/= batterie de tests locale, visible seulement par l'utilisateur)
    - **notifier à toute l'équipe** les problèmes / réussites
    - trouver un bug le plus tôt possible **limite son impact** et son coût pour tout le projet
        ![ab87062e474d47c2e7374af7fee9b536.png](../_resources/ab87062e474d47c2e7374af7fee9b536.png)

* * *

**Les tests**

- **Tous les langages de programmation** avancés ont des logiciels de tests : php, python, java, etc.
- **Plusieurs types de test** :
    - **Les tests unitaires** : vérifier qu'un morceau de code particulier a un résultat particulier. Exemple : *conjuguer(chanter, je, présent, indicatif): je chante*.
    - **Les tests d'intégrations** : vérifier qu'un ensemble de blocs fonctionne bien ensemble. Exemple : si je clique sur le bouton conjuguer, la fonction conjuguer est appelée et je vois le résultat,
    - etc..
- Écrire des tests représente une **augmentation du temps de travail** importante au départ. Cependant, un code testé vous signale tout de suite quand un changement opéré produit un problème. C'est une meilleure manière de découvrir un problème que d'avoir à cliquer sur tous les liens de toutes les pages de votre site.
- **TDD: Test Driven Development**
    - **principe** \- écrire un test avant d'écrire la fonction
    - écrire le test veut dire que l'on est **sûr de ce que l'on veut obtenir**. C'est un moyen de se rendre compte de la limite de la compréhension de notre code ou de notre mission.
    - **exemple** \- vérifier un fichier XML avec une DTD est une sorte de test

* * *

**Outils d'intégration continue**

- **TravisCI** (Travis Continuous Integration) - un outil **partiellement gratuit et externe à Github** qui permet de se connecter avec un dépôt github ou gitlab.
    - en fonction d'une paramétrisation, il lancera l'ensemble des tests fournis et donnera un message
    - en cas de pull request, il vous avertira avant de faire la fusion proposée par vos collègues, directement sur la page github
    - **configurer Travis**
        
        - d'abord, on spécifie le langage et la version du langage à utiliser
        - ensuite, on installe le logiciel de test créé par Clérice
        - enfin, on écrit un script qui sera exécuter pour faire les tests
        
        ```
        language: python
        python:
            - '3.5'
        
        install:
            - pip3 install HookTest>=1.0.0
        
        script: hooktest ./ --scheme epidoc --workers 3 --verbose 10 --manifest --console table --countword
        ```
        
- **Github Action** \- le logiciel de test propre à gh

* * *

***Exercice vacances* ~ faire la slide 12 du diapo cours-git chapitre 4**


---
**mon token : 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** (valable jusqu'au 25 décembre)